class NotesController < ApplicationController
    

    def index
        notes = Note.all
        render json: notes
    end
    
    def show
        note = Note.find(params[:id])
        render json: note
    end
    
    def create
        note = Note.create!(note_params)
        render json: note
    end
    
    def update
        note = Note.find(params[:id])
        note.update!(note_params)
        render json: note
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
        render json: {}
    end
    
    private
        
    def find_note
        note = Note.find(params[:id])
    end
    
    def note_params
        params.require(:note).permit(:text, :video_id)
    end
    
end

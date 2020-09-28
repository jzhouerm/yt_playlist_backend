class NotesController < ApplicationController
    
    before_action :find_note, only: [:show]
    def index
        notes = Note.all
        render json: notes, except: [:created_at, :updated_at]
    end
    
    def show
        render json: note, except: [:created_at, :updated_at]
    end
    
    def create
        note = Note.create!(note_params)
        render json: note, except: [:created_at, :updated_at]
    end
    
    def update
        note = Note.find(params[:id])
        note.update!(note_params)
        render json: note, except: [:created_at, :updated_at]
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

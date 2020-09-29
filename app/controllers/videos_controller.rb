class VideosController < ApplicationController
    
    # before_action :find_video

    def notes
        video = Video.find(params(:id))
        render json: video.notes
    end

    def index
        videos = Video.all
        render json: videos
    end
    
    def show
        video = Video.find(params[:id])
        render json: video
    end
    
    def create
        video = Video.create!(video_params)
        render json: video
    end
    
    def update
        video = Video.find(params[:id])
        video.update!(video_params)
        render json: video
    end

    def destroy
        video = Video.find(params[:id])
        video.destroy
        render json: {}
    end
    
    private
        
    def find_video
        video = Video.find(params[:id])
    end
    
    def video_params
        params.require(:video).permit(:name, :url, :playlist_id)
    end
    
end

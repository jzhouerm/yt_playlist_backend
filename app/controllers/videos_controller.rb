class VideosController < ApplicationController
    
    before_action :find_video, only: [:show]
    def index
        videos = Video.all
        render json: videos, except: [:created_at, :updated_at]
    end
    
    def show
        render json: video, except: [:created_at, :updated_at]
    end
    
    def create
        video = Video.create!(video_params)
        render json: video, except: [:created_at, :updated_at]
    end
    
    def update
        video = Video.find(params[:id])
        video.update!(video_params)
        render json: video, except: [:created_at, :updated_at]
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

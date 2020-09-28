class PlaylistsController < ApplicationController
    
    before_action :find_playlist, only: [:show]
    def index
        playlists = Playlist.all
        render json: playlists, except: [:created_at, :updated_at]
    end
    
    def show
        render json: playlist, except: [:created_at, :updated_at]
    end
    
    def create
        playlist = Playlist.create!(playlist_params)
        render json: playlist, except: [:created_at, :updated_at]
    end
    
    def update
        playlist = Playlist.find(params[:id])
        playlist.update!(playlist_params)
        render json: playlist, except: [:created_at, :updated_at]
    end

    def destroy
        playlist = Playlist.find(params[:id])
        playlist.destroy
        render json: {}
    end
    
    private
        
    def find_playlist
        playlist = Playlist.find(params[:id])
    end
    
    def playlist_params
        params.require(:playlist).permit(:name, :user_id)
    end
    
end

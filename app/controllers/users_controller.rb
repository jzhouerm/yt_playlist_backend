class UsersController < ApplicationController


    def show
          user_id = params[:id]
          user = User.find(user_id)
        #   render json: UserSerializer.new(user)
        playlists_array = []
        videos_array = []
        notes_array = []
        user.playlists.each do |playlist|
          playlistObj = { 'id' => playlist.id, 'user_id' => playlist.user_id, 'name' => playlist.name}
            playlist.videos.each do |video|
              video_obj = { 'id' => video.id, 'playlist_id' => video.playlist_id,'url' => video.url, 'name' => video.name}
              videos_array << video_obj
            #   playlistObj['videos'] << video_obj

              if video.notes.length > 0
                  video.notes.each do |note|
                    note_obj = {'id' => note.id, 'video_id' => note.id, 'text' => note.text}
                    notes_array << note_obj
                  end
              end
            end
            playlists_array << playlistObj
        end
          render json: {user: user, playlists: playlists_array, notes: notes_array, videos: videos_array}
    end


    def index
        users = User.all
        render json: users
    end
    
    def create
        user = User.create!(user_params)
        render json: user
    end
    
    def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user
    end
    
    private
        
    def find_user
        user = User.find(params[:id])
    end
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :img)
    end
    
end


# def show
#     user_id = params[:id]
#     user = User.find(user_id)
#   #   render json: UserSerializer.new(user)
#   playlists_array = []
#   videos_array = []
#   notes_array = []
#   user.playlists.each do |playlist|
#     playlistObj = { 'id' => playlist.id, 'name' => playlist.name, 'videos' => []}
#       playlist.videos.each do |video|
#         video_obj = { 'id' => video.id, 'name' => video.name, 'notes' => video.notes }
#         playlistObj['videos'] << video_obj
#       end
#       playlists_array << playlistObj
#   end
#     render json: {user: user, playlist: playlists_array}
  
# end
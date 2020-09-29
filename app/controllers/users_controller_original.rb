class UsersController < ApplicationController


    def show
          user_id = params[:id]
          user = User.find(user_id)
        #   render json: UserSerializer.new(user)
          render json: {user: user, playlists: user.playlists}
          
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

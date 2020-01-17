class UsersController < ApplicationController

    def signIn
        user = User.find_by(username: sign_in_params[:username])
        if user && user.authenticate(sign_in_params[:password])
            #found user
            render json: user
        else
            #didn't find user 
            render json: { error: 'Error - username/password combination invalid' }, status: 401 
        end

    end


    def index
        users = User.all
        render json: users
    end

    private

    def sign_in_params
        params.require(:data).permit(:username, :password)
    end


end

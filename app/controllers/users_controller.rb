class UsersController < ApplicationController


    def signin
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
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


end

class UsersController < ApplicationController

    def signIn
        user = User.find_by(username: sign_in_params[:username])
        if user && user.authenticate(sign_in_params[:password])
            #found user
            render json: { username: user.username, token: issue_token({ id: user.id }) }
        else
            #didn't find user 
            render json: { error: 'Username/password combination invalid' }, status: 401 
        end

    end

    def validate
         user = get_current_user
        if user
            render json: { username: user.username, token: issue_token({ id: user.id }) } 
        else
            render json: {error: 'Invalid token.'}, status: 401
        end
    end


    def profile
        user = get_current_user
        if user
            render json: { first_name: user.first_name, last_name: user.last_name } 
        else
            render json: {error: 'Invalid token.'}, status: 401
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

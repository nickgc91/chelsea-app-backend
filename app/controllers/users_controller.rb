class UsersController < ApplicationController

    def signIn
        user = User.find_by(username: sign_in_params[:username])
        if user && user.authenticate(sign_in_params[:password])
            #found user
            render json: { username: user.username, id: user.id }
        else
            #didn't find user 
            render json: { error: 'Username/password combination invalid' }, status: 401 
        end

    end

    def validate
        id = request.headers['Authorization'].to_i
        user = User.find_by(id: id)
        if user
            render json: user
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

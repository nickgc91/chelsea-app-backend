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
            render json: { first_name: user.first_name, last_name: user.last_name, favorite_player: user.favorite_player, favorite_video: user.favorite_video, 
            favorite_match: user.favorite_match, memorable_moment: user.memorable_moment, uplifting_win: user.uplifting_win, demoralizing_defeat: user.demoralizing_defeat } 
        else
            render json: {error: 'Invalid token.'}, status: 401
        end
    end

    def updateFavMatch
        user = get_current_user
        if user
            user.update(favorite_match: update_params[:data])
            render json: {favorite_match: user.favorite_match}
        else
            render json: {error: "Couldn't find user!"}
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

    def update_params
        params.require(:data).permit(:data)
    end


end

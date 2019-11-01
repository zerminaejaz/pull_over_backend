require "pry"
class AuthController < ApplicationController

    def login
        user = User.find_by(username: login_params[:username])
       
        if user && user.authenticate(login_params[:password])
            payload = {user_id: user.id}
            token = JWT.encode(payload, secret, 'HS256')
            render json: {user: user, token: token}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def persist
        if request.headers['Authorization']
            # in headers authorization its convention to have "bearer 13243433"
            encoded_token = request.headers['Authorization'].split(' ')[1]
            token = JWT.decode(encoded_token, secret) 
            # ^ gives back {{payload}, algo}
            user_id = token[0]['user_id']
            user = User.find(user_id)
            render json: user
        end
    end

    private

    def login_params
        params.permit(:username, :password)
    end


end
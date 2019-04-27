class AuthController < ApplicationController

  def create 
      user = User.find_by(username: params[:user][:username])

      if user && user.authenticate(params[:user][:password])
        render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
      else
        render json: {errors: 'Please enter the correct username or password'}
      end
    end

    def auto_login
      if curr_user
        render json: {user: UserSerializer.new(curr_user)}
      else
        render json: {errors: 'Something went wrong'}
      end
    end
end

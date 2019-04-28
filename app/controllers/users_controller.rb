class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    user = User.create(user_params)

    if user.valid?
      token = encode_token(user.id)

      render json: {user: UserSerializer.new(user), token: token}

    else
      render json: {errors: 'Please fill out the correct information'}
    end
end

private

  def user_params
    params.require(:user).permit(:username, :password, :fullname)
  end

end

class UserGroupsController < ApplicationController

  def index
    @user_groups = UserGroup.all
    render json: @user_groups
  end

  def show
    @user_group = UserGroup.find(params[:id])
    render json: @user_group
  end

  def create
    do_you_exist = UserGroup.find_by(user_groups_params)
    if do_you_exist
      render json: {errors: 'You cannot join a group you are already in!'}
    else
      @user_group = UserGroup.create(user_groups_params)
      user = User.find(user_groups_params[:user_id])

      # send back group: GroupInfo, user: @user
      render json: {group: GroupSerializer.new(@user_group.group), user: UserSerializer.new(user) }
    end
  end

  def destroy
    @user_group = UserGroup.find(params[:id])
    user = User.find(@user_group.user_id)
    @user_group.destroy
    render json: {user_group: @user_group, user: UserSerializer.new(user) }
  end

  private

  def user_groups_params
    params.require(:user_group).permit(:user_id, :group_id)
  end

end

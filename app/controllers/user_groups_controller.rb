class UserGroupsController < ApplicationController

  def index
    @user_groups = UserGroup.all
    render json: @user_groups
  end

  def create
    @user_group = UserGroup.create(user_groups_params)
    render json: @user_group
  end

  private

  def user_groups_params
    params.require(:user_group).permit(:user_id, :group_id)
  end

end

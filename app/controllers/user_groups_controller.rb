class UserGroupsController < ApplicationController

  def index
    @user_groups = UserGroup.all
    render json: @user_groups
  end

  def create
    do_you_exist = UserGroup.find_by(user_groups_params)
    if do_you_exist
      render json: {errors: 'You cannot join a group you are already in!'}
    else
      @user_group = UserGroup.create(user_groups_params)
      render json: @user_group.group
    end
  end

  private

  def user_groups_params
    params.require(:user_group).permit(:user_id, :group_id)
  end

end

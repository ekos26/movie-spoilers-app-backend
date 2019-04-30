class GroupsController < ApplicationController
  # before_action :authorized, only: [:index, :show]

  def index
    @groups = Group.all
    render json: @groups
  end

  def show
    @group = Group.find(params[:id])
    render json: @group
  end

  def create
    @group = Group.create(group_params)
    render json: @group
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end

end

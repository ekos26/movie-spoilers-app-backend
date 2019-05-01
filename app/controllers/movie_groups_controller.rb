class MovieGroupsController < ApplicationController

  def index
    @movie_groups = MovieGroup.all
    render json: @movie_groups
  end

  def create
    byebug
    @movie_group = MovieGroup.create(movie_groups_params)
    render json: @movie_group
  end

  private

  def movie_groups_params
    params.require(:movie_group).permit(:movie_id, :group_id)
  end

end

class MovieGroupsController < ApplicationController

  def index
    @movie_groups = MovieGroup.all
    render json: @movie_groups
  end

  def create
    # byebug
    @movie = Movie.find_or_create_by(title: params[:title], year: params[:year], poster: params[:poster], plot: params[:plot], id: params[:movie_id])
    @movie_group = MovieGroup.create(movie_groups_params)
    render json: @movie
  end

  private

  def movie_groups_params
    params.require(:movie_group).permit(:movie_id, :group_id)
  end

end

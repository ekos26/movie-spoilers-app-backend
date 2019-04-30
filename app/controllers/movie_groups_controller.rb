class MovieGroupsController < ApplicationController

  def index
    @movie_groups = MovieGroup.all
    render json: @movie_groups
  end

end

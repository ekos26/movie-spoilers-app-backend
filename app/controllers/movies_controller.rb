class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render json: @movies
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.create(movie_params)
    render json: @movie
  end

  def fetch_movie
    # byebug
    title = params[:title]
    key = ENV['API_KEY']
    response = HTTP.get("http://www.omdbapi.com/?apikey=#{key}&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    render json: parsed_response
    # parsed_response["#{param}"]
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :poster, :plot)
  end

end

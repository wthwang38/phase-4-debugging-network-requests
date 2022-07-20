class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end

  def create
  render json: Movie.create(movie_params), status: :created
  end


private
  def movie_params
      params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end
end

class MoviesController < ApplicationController

  def index
    @movies = current_user.movies
    # @movies = Movie.all

  end

  def new
    @movie = Movie.new
  end

  def create
    current_user.movies.build(movie_params)
    if @movie.save
      redirect_to new_movie_path(@movies)
    else
      render :new
    end
  end

  def g_rating
    @movies = Movie.g_rating
    render :index
  end

  def pg_rating
    @movies =Movie.pg_rating
    render :index
  end

  def r_rating
    @movies = Movie.r_rating
    render :index
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :actor, :genre, :rating, :description)
  end


end

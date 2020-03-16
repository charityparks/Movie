class MoviesController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    @movies = Movie.all
    @movies = Movie.order('title ASC')
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = current_user.movies.build(movie_params)
    if @movie.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end

  def destroy
    Movie.find_by(id: params[:id]).destroy
    redirect_to movies_path
  end

  def g_rating
    @movies = Movie.g_rating
    render :g_rating
  end

  def pg_rating
    @movies =Movie.pg_rating
    render :pg_rating
  end

  def r_rating
    @movies = Movie.r_rating
    render :r_rating
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :genre, :rating, :description)
  end
end

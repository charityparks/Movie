class MoviesController < ApplicationController

  def index
  
    @movies = Movie.all
  end



  # def create
  # end
  #

end

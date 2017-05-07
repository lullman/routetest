class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    movie = Movie.create(movie_params)
    if movie.save
      redirect_to movie_path movie
    else
      redirect_to new_movie_path
    end
  end

  def update
    movie = Movie.find(params[:id])
    movie.update(movie_params)
    if movie.save
      redirect_to movie_path movie
    else
      redirect_to edit_movie_path movie
    end
  end

  def destroy
  end

  private

    def movie_params
      params.require(:movie).permit(:movie_title, :released)
    end

end

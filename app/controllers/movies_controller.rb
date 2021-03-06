class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
    @movie.actors.new
  end

  def edit
    @movie = Movie.find(params[:id])
    @movie.actors.new
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

  def edit_all
    @movies = Movie.all
  end

  def update_all
    p "*" * 25
    p "Movies Controller :: Update All"
    params[:movie].keys.each do |id|
      movie = Movie.find(id.to_i)
      movie.update(params['movie'][id].permit('movie_title', 'released'))
    end
    p "*" * 25
    redirect_to movies_path
  end

  private

    def movie_params
      params.require(:movie).permit(:movie_title, :released, actors_attributes: [ :actor_name] )
    end

end

class MoviesController < ApplicationController
  def index
    @all_movies = Movie.all.page(params[:page]).per(5)

  end

  def show
    @sdmovie = Movie.find(params[:id])
  end

  def new
    @sdmovie = Movie.new
  end

  def create
    @sdmovie = Movie.new(movie_params)

    if @sdmovie.save
      redirect_to movies_path, notice: "#{@sdmovie.title} was submitted successfully!"
    else
      render :new
    end

  end

  def edit
    @sdmovie = Movie.find(params[:id])
  end

  def update
    @sdmovie = Movie.find(params[:id])
    @sdmovie.assign_attributes(movie_params)

    if @sdmovie.save
      redirect_to movies_path, notice: "#{@sdmovie.title} was submitted successfully!"
    else
    # render :show #only if in same controller
      render :edit
    end

  end

  def destroy
    Movie.find(params[:id]).destroy

    redirect_to movies_path
  end

  protected
    def movie_params
      params.require(:movie).permit! # allow all
      # params.require(:movie).permit(
      # :image, :remote_image_url 
      # )
    end
end

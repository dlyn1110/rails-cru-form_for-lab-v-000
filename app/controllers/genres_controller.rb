class GenresController < ApplicationController

  def index
		@genre = Genre.all
	end

	def show
		@genre = Genre.find(params[:id])
	end

	def new
		@genre = Genre.new
	end

	def create
	  @genre = Genre.new(params["genre"])
	  @genre.save
	  redirect_to genre_path(@genre)
	end

	def update
	  @genre = Genre.find(params[:id])
	  @genre.update(params["genre"])
	  redirect_to genre_path(@genre)
	end

	def edit
	  @genre = Genre.find(params[:id])
	end

  private

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
  
end

class ArtistsController < ApplicationController

  
	def show
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
	  @artist = Artist.new(params["artist"])
	  @artist.save
    
	  redirect_to artist_path(@artist)
	end

	def update
	  @artist = Artist.find(params[:id])
	  @artist.update(params["artist"])
	  redirect_to artist_path(@artist)
	end

	def edit
	  @artist = Artist.find(params[:id])
	end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end

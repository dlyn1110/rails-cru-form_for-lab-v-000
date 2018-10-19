class ArtistsController < ApplicationController

  def index
		@artist = Artist.all
	end

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
end

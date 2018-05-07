class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
    render json: @artworks
  end

  def create
    data = Artwork.new(artwork_params)
    if data.save
      render json: data
    else
      render json: data.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    data = Artwork.find(params[:id])
    render json: data
  end

  def update
    data = Artwork.find(params[:id])

    if data.update(artwork_params)
      render json: data
    else
      render json: data.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    data = Artwork.find(params[:id])
    data.destroy
    render json: data
  end

  private
  def artwork_params
    params.require(:artwork).permit(:artist_id, :title, :image_url)
  end
end

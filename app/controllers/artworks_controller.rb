# app/controllers/artworks_controller.rb
class ArtworksController < ApplicationController
  before_action :set_artwork, only: [:show, :update, :destroy]

  # GET /artworks
  def index
    @artworks = Artwork.all
    json_response(@artworks)
  end

  # POST /artworks
  def create
    @artwork = Artwork.create!(artwork_params)
    json_response(@artwork, :created)
  end

  # GET /artworks/:id
  def show
    json_response(@artwork)
  end

  # PUT /artworks/:id
  def update
    @artwork.update(artwork_params)
    head :no_content
  end

  # DELETE /artworks/:id
  def destroy
    @artwork.destroy
    head :no_content
  end

  private

  def artwork_params
    # whitelist params
    params.permit(:title, :created_by)
  end

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end
end

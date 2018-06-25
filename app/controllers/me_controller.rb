class  MeController < ApplicationController
  skip_before_action :authorize_request, only: [:generate]
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :set_artwork, only: [:updateArtwork, :destroyArtwork]
  before_action :set_favourite, only: :destroyFavourite

  # GET /me
  def index
    @user = curent_user
    json_response(@user)
  end


  # GET /me/artworks
  def artworks
    @artworks = current_user.artworks
    json_response(@artworks)
  end

  # POST /me/artworks
  def createArtwork
    $artwork = artwork_params
    $artwork.merge!(artist: current_user.name)
    $thumbnail = "https://i.ytimg.com/vi/" + $artwork[:videoId] + "/default.jpg"
    $artwork.merge!(thumbnail: $thumbnail)
    @artwork = current_user.artworks.create!($artwork)
    json_response(@artwork, :created)
  end

  # PUT /me/artworks/:id
  def updateArtwork
    $artwork = artwork_params

    $artwork.merge!(thumbnail: $thumbnail)
    @artwork.update($artwork)
    # updates automatically generate urls
    $thumbnail = "https://i.ytimg.com/vi/" + @artwork.videoId + "/default.jpg"
    $artwork.merge!(thumbnail: $thumbnail)
    @artwork.update($artwork)
    head :no_content
  end

  # DELETE /me/artworks/:id
  def destroyArtwork
    @artwork.destroy
    head :no_content
  end

  # GET /me/favourites
  def favourites
    @favourites = current_user.favourites
    json_response(@favourites)
  end

  # GET /me/favourites/artworks
  def favouritesArtworks
    @favourites = current_user.favourites
    @artworks_ = []
    @favourites.each { |x| @artworks_.append(User.find(x.favourite_id).artworks)}
    @artworks = @artworks_.flatten(1)
    json_response(@artworks)
  end

  # POST /me/favourites
  def createFavourite
    @favourite = current_user.favourites.create!(favourite_params)
    json_response(@favourite, :created)
  end


  # DELETE /me/favourite/:id
  def destroyFavourite
    @favourite.destroy
    json_response({sucess: true})
  end
  private

  def user_params
    params.permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end

  def artwork_params
    # whitelist params
    params.permit(:title, :description, :videoId)
  end

  def favourite_params
    # whitelist params
    params.permit(:favourite_id)
  end
  def set_user
    @user = User.find(params[:id])
  end

  def set_favourite
    @favourite = FavouriteUser.find_by(favourite_id: params[:id])
  end

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end
end

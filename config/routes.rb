Swagger::Docs::Config.base_api_controller = ActionController::API
include Swagger::Docs::ImpotentMethods

Rails.application.routes.draw do
  resources :artworks do
  end
  get 'users', to: 'users#index'
  get 'users/:id/artworks', to: 'users#artworks'
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  post 'generate', to: 'users#generate'

  get 'me', to: 'me#index'

  # me favourites

  get 'me/favourites', to: 'me#favourites'
    get 'me/favourites/artworks', to: 'me#favouritesArtworks'
  post 'me/favourites/', to: 'me#createFavourite'
  delete 'me/favourites/:id', to: 'me#destroyFavourite'

  # me artworks
  get 'me/artworks', to: 'me#artworks'
  post 'me/artworks', to: 'me#createArtwork'
  put 'me/artworks/:id', to: 'me#updateArtwork'
  delete 'me/artworks/:id', to: 'me#destroyArtwork'

  get '/api' => redirect('/swagger/dist/index.html?url=/apidocs/api-docs.json')
end

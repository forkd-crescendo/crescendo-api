Rails.application.routes.draw do
  resources :artworks do
  end
  get 'users', to: 'users#index'
  get 'users/:id/artworks', to: 'users#artworks'
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end

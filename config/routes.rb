Rails.application.routes.draw do
  resources :artworks do
  end
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end

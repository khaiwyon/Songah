Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "spotify#index"
  resources :chart, only: [:index]
  resources :spotify, only: [:index]

  get '/auth/spotify/callback', to: 'users#spotify'
end

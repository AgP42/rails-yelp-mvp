Rails.application.routes.draw do

  # detailed version :
  root to: 'restaurants#index'
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :review
  post 'restaurants/:restaurant_id/reviews/', to: 'reviews#create', as: :restaurant_reviews

  # #shortcut :
  # resources :restaurants do
  #   resources :reviews, only: [ :new, :create ]
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

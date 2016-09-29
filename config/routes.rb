Rails.application.routes.draw do
  devise_for :users
  root to: 'restaurants#index'

  resources :restaurants do
    member do 
      post :upvote
    end
    resources :reviews, only: [:create, :destroy]
  end
end

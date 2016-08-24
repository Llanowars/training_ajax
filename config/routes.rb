Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'restaurants#index'

  resources :restaurants do
    resources :reviews, only: [:create, :destroy]
  end

end

Rails.application.routes.draw do
  devise_for :users
  root to: 'restaurants#index'

  resources :restaurants, only: [:index, :show, :destroy, :create, :edit, :update] do
    resources :reviews, only: [:create, :destroy]
  end

end

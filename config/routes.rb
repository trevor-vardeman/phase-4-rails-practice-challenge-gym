Rails.application.routes.draw do
  resources :membership, only: [:create]
  resources :gym, only: [:index, :show, :update, :destroy]
  resources :client, only: [:index, :show, :update]
end
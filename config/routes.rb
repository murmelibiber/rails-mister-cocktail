Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


resources :guests, only: [:show, :index, :new, :create] do
  resources :amounts, only: [:create] #we don't need the destroy here, because if we wanna destroy a dose we don't need this here

end

resources :amounts, only: [:destroy]

root 'guests#index'

end

Rails.application.routes.draw do

  resources :stores
  resources :receipts
  resources :items do
    post :remove, on: :member
  end

  get 'empty/index'
  root 'empty#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

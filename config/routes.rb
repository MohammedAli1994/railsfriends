Rails.application.routes.draw do
  devise_for :users
  resources :data
 #get 'home/index'
 get 'home/about'
 #root 'home#index'
 root 'data#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

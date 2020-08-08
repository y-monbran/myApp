Rails.application.routes.draw do

  devise_for :users
  
  root 'posts#index'

  resources :posts do
    member do
      get 'graph'
    end
  end
  resources :items

end
  
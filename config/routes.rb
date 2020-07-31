Rails.application.routes.draw do

  devise_for :users
  
  root 'posts#index'

  resources :posts do
    collection do
      get 'graph'
    end
  end
  resources :items

end
  
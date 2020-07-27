Rails.application.routes.draw do
  resources :posts do
    collection do
      get 'graph'
    end
  end

  root 'posts#index'
end
  
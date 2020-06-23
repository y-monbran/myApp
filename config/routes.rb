Rails.application.routes.draw do
  # root to: 'posts#index'
  get '/', to: 'posts#index'
  get '/posts/new', to: 'posts#new'
end

Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :boards
  resources :comments
  get '/home' => 'users#home',as: 'home'
  get '/about' => 'users#about',as: 'about'
  root 'users#index'
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

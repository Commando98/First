Rails.application.routes.draw do
  #get 'admin/index'

  #get 'sessions/new'

  post 'sessions/create'

  get 'sessions/destroy'

  resources :users
  resources :posts
  root 'posts#index'

  get 'admin'=> 'admin#index'
  controller :sessions do
    get 'login' => :new
    get 'login' => :create
    get 'logout' => :destroy
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

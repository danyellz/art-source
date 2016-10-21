PaperclipDemo::Application.routes.draw do
  get 'users/create'

	resources :sessions, only: [:new, :create, :destroy]
	resources :users, only: [:create]

	resources :friends
	root :to => 'friends#index'

	get '/signup' => 'users#new'
    post '/users' => 'users#create'

    get '/login' => 'sessions#new'
  	post '/login' => 'sessions#create'
  	get '/logout' => 'sessions#destroy'
end

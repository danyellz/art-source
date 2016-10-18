PaperclipDemo::Application.routes.draw do
	resources :sessions, only: [:new, :create, :destroy]

	get 'sessions/new'
	get 'sessions/create'
	get 'sessions/destroy'

	resources :friends
	root :to => 'friends#index'
end

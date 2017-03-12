Rails.application.routes.draw do
  get 'main/show'

	root 'main#show', as: 'home'

	get 'about' => 'pages#about' , as: 'about'

	resources :posts 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

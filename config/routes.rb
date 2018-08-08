Rails.application.routes.draw do
  get 'proposals/new'
  get 'proposals/create'
  get 'reviews/create'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

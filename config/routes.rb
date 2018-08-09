Rails.application.routes.draw do
  devise_for :charities, path: 'charities'
  devise_for :developers, path: 'developers'
  root to: 'pages#home'
  resources :projects do
    resources :reviews, only: [:create]
    resources :proposals, only: [:new, :create]
    resources :teams
    resources :posts
    resources :project_skills, except: [:show, :index]
  end
  resources :developers do
    resources :developer_skills, except: [:show, :index]
  end
  get 'dashboard', to: 'pages#dashboard'
  get 'charity_dahsboard', to: 'pages#charity-dashboard'
end

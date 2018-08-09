Rails.application.routes.draw do
  devise_for :charities, path: 'charities'
  devise_for :developers, :controllers => { :omniauth_callbacks => "callbacks" }, path: 'developers'
  root to: 'pages#home'
  get 'dashboard/:id', to: 'developers#dashboard', as: 'dashboard'
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

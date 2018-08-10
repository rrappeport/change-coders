Rails.application.routes.draw do
  devise_for :charities, path: 'charities'
  devise_for :developers, :controllers => { :omniauth_callbacks => "callbacks" }, path: 'developers'
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
  get 'projects/:project_id/dashboard', to: 'projects#dashboard', as: 'projects_dashboard'
  get 'developer_dashboard', to: 'developers#dashboard', as: "developer_dahsboard"
  get 'charity_dahsboard', to: 'charities#dashboard', as: "charity_dahsboard"
end

Rails.application.routes.draw do
  devise_for :charities, path: 'charities'
  devise_for :developers , :controllers => { :omniauth_callbacks => "callbacks" }, path: 'developers'
  root to: 'pages#home'


  resources :charities, only: [:index, :show]
  resources :projects do
    resources :reviews, only: [:create]
    resources :proposals, only: [:new, :create]
    resources :members
    resources :posts
    resources :project_skills, except: [:show, :index]
    resources :posts, except: [:show, :index]
  end
  resources :developers do
    resources :developer_skills, except: [:show, :index]
  end

  # resources :messages
  # resources :chatrooms


  get 'projects/:project_id/dashboard', to: 'projects#dashboard', as: 'projects_dashboard'
  get 'developer_dashboard', to: 'developers#dashboard', as: "developer_dashboard"
  get 'charity_dashboard', to: 'charities#dashboard', as: "charity_dashboard"

  post 'projects/:project_id/dashboard/accept', to: 'proposals#accept', as: "accept_proposal"
  post 'projects/:project_id/dashboard/reject', to: 'proposals#reject', as: "reject_proposal"

end

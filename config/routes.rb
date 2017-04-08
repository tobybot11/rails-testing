Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :users
  # didn't realize this resource call was no longer needed?

  devise_for :users, 
    path: "auth",
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      sign_up: 'join_now',
      confirmation: 'verification',
      registration: 'register',
    },
    controllers: {
      sessions: 'auth/sessions' 
    }
    resources :users

    root to: 'users#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

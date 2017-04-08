Rails.application.routes.draw do
  # devise_for :users
  # didn't realize this resource call was no longer needed?

  devise_for :users, class_name: User, controllers: {
    sessions: 'auth/sessions'
  }
  resources :users

  #unauthenticated do
  #  root to: 'auth/sessions#new'
  #end

  #authenticated do
  #  root to: 'users#index'
  #end
  root to: 'users#index'
#  root to: redirect('/login.html') 
      # redirect('/logout.html')
#  root to: "users#index" -> works
#  root to: new_user_session_path -> fail?
#  root to: "devise/sessions#new" -> fail?

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

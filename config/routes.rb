Rails.application.routes.draw do
  devise_for :users
  # didn't realize this resource call was no longer needed?
  #  resources :users

  unauthenticated do
       root to: redirect('/login.html') 
  end

  authenticated do
      root to: redirect('/logout.html')
  end
#  root to: "users#index" -> works
#  root to: new_user_session_path -> fail?
#  root to: "devise/sessions#new" -> fail?

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :characters
      resources :movies
    end
  end
  mount_devise_token_auth_for 'User', at: 'auth'
end

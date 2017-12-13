Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :users

  resources :boards do
    resources :board_users
    resources :users do
      resources :mezzages
      resources :board_users
    end
  end

end

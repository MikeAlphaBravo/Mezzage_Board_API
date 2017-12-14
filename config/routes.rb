Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :boards do
    resources :mezzages
    resources :board_users
  end

  resources :users do
    resources :board_users
  end

end

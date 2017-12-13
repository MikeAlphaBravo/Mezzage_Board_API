Rails.application.routes.draw do
  resources :users

  resources :boards do
    resources :board_users
    resources :users do
      resources :mezzages
      resources :board_users
    end
  end

end

Rails.application.routes.draw do
  resources :users
  resources :mezzages
  resources :boards do
    resources :board_users
    resources :users do
      resources :board_users
    end
  end

end

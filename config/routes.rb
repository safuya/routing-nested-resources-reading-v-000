Rails.application.routes.draw do
  resources :authors, only: [:show] do
    resources :posts, only: %i[index show]
  end

  resources :posts, only: %i[index show new create edit update]

  root 'posts#index'
end

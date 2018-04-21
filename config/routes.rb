Rails.application.routes.draw do
  resources :authors, only: [:show]
  get 'authors/:id/posts', to: 'authors#posts_index'
  get 'authors/:id/posts/:post_id', to: 'authors#post'

  resources :posts, only: %i[index show new create edit update]

  root 'posts#index'
end

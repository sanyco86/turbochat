Rails.application.routes.draw do
  root "rooms#index"
  devise_for :users

  resources :rooms, only: %i[show create], param: :title
  resources :messages, only: :create do
    post :like, on: :member
  end
end

Rails.application.routes.draw do
  devise_for :users
  root 'messages#index'
  resources :users, only: [:index, :edit, :update]
  resources :groups, only: [:new, :update, :create, :edit] do
    resources :messages, only: [:index]
  end
end

# ルートはのちにgroups#indexに変更
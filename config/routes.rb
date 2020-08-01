Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/new'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  'items#index'
  resources :items,only: [:index, :new, :create]
  # get 'posts', to: 'posts#index'
    resources :articles,only: :show
end


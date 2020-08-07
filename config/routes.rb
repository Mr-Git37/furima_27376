Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/new'
  # patch '/items/:id', to: 'items#update'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  'items#index'
  resources :items
    resources :articles,only: :show
end


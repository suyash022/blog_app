Rails.application.routes.draw do
  resources :sign_ups
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :writers
  # resources :users

   root 'welcome#index'

   resources :users
    resources :articles do
      resources :comments
    # get 'my_method', on: :member
     end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


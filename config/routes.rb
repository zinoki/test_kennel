Rails.application.routes.draw do
  get 'welcome/index'
# resources makes all the routes that show up in the bin/rails routes command
  resources :chats

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'index#show'
  resources :posts, only: %i[index]
end

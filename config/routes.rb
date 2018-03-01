Rails.application.routes.draw do
  resources :articles
  root 'articles#welcome'
  get 'articles/welcome'
end

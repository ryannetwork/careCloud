Rails.application.routes.draw do
  root "pages#index"

  resources :pages
  resources :codes
  get 'search', to: 'search#search'
  post 'search', to: 'search#search'

  get "/codes/:code_id" => 'codes#show'
  get "/privacypolicy" => "pages#indexToS"
  get "/termsofservice" => "pages#indexShow"
  get "/signup" => "pages#signup"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

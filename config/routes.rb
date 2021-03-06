Rails.application.routes.draw do
  get 'favorite/create'
  post 'favorite/create', to: 'favorite#create'
  resources :favorites
  resources :users

  post 'favorite/delete', to: 'favorite#destroy'

  get 'favorite/:user_id', to: 'favorite#show'

  root "pages#index"

  resources :pages
  resources :codes, except: [:show]

  get '/index', to: 'codes#index'
  get '/_search', to: 'search#search'
  post '/_search', to: 'search#search'
  get '/chapters', to: 'pages#chapters'
  get '/chapters/:id', to: 'pages#eachChapters'

  get "/codes/:code_id" => 'codes#show'
  get "/privacypolicy" => "pages#indexToS"
  get "/termsofservice" => "pages#indexShow"
  get "/signup" => "pages#signup"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

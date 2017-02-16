Rails.application.routes.draw do
  get '/products' => 'products#index'

  get '/products/new' => 'products#new'

  get 'products/:id/edit' => 'products#edit'

  post '/products/create' => 'products#create'

  get '/products/:id' => 'products#show'

  post '/products/update/:id' => 'products#update'

  get '/products/destroy/:id' => 'products#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

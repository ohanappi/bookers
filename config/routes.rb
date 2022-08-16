Rails.application.routes.draw do
  get '/' => 'homes#top'

  resources :books
  
  patch 'books/:id' => 'books#update', as: 'update_book'
  
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

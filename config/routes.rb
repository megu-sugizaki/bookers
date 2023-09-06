Rails.application.routes.draw do
  resources :books, only:[:index, :edit, :show, :destroy]
  post 'books' => 'books#create'
  get '/' => 'homes#top'
  patch 'books/:id' => 'books#update', as: 'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end 
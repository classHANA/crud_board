Rails.application.routes.draw do
  root 'post#index'

  get 'post/new'
  get 'post/create'
  get 'post/show/:id' => 'post#show'
  get 'post/edit/:id' => 'post#edit'
  get 'post/update/:id' => 'post#update'
  get 'post/destroy/:id' => 'post#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/show'
  get 'posts/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'posts#index'
  resources :posts do
    resources :comments
  end
end

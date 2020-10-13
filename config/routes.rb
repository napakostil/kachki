Rails.application.routes.draw do
  resources :posts do
  	resources :comments
  end
  resources :subscribers

  get 'posts/index'

# root 'posts#index'

get 'promo', to: 'promo#index'
get 'about', to: 'about#index'

root 'promo#index'

end

Rails.application.routes.draw do
  resources :puppies
  resources :friendships
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get ('/register'), to: ('application#register')
  get ('/login'), to: ('application#login')
end

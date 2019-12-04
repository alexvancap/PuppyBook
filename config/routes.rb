Rails.application.routes.draw do
  resources :puppies
  resources :friendships
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #application
  get ('/register'), to: ('application#register')
  get ('/login'), to: ('application#login')
  post ('/login'), to: ('application#login')
  get ('/logout'), to: ('application#logout')

  #puppies
  get ('/puppies/:id/friends'), to: ('puppies#friends')
end


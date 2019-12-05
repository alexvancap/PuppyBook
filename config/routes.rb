Rails.application.routes.draw do
  resources :puppies
  resources :friendships
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #application
  get ('/'), to: ('application#index')
  get ('/register'), to: ('application#register')
  post ('/register'), to: ('application#create')
  get ('/login'), to: ('application#login')
  post ('/login'), to: ('application#login')
  get ('/logout'), to: ('application#logout')
  post ('/search'), to: ('application#search')

  #puppies
  get ('/puppies/:id/friends'), to: ('puppies#friends')
  get ('/puppies/:id/unfriend/:friend_id'), to: ('puppies#unfriend')
  get ('/puppies/:id/edit_profile'), to: ('puppies#edit_profile')
  post ('/puppies/:id/edit_profile'), to: ('puppies#edit_profile')

  #posts
  get ('/posts/:id/like'), to: ('posts#like')
end


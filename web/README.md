# README

## Devise

rails g devise:install
rails g devise:views
rails g devise:model user

### Add username to devise registration controllers

rails g devise:controllers users


add to routes.rb

`    devise_for :users, controllers: {
       sessions: 'users/sessions',
       registrations: 'users/registrations'
     }
   
`
user/registration_controller.rb
 
 `before_action :configure_sign_up_params, only: [:create]
 def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
  `
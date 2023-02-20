# README

## Devise

rails g devise:install
rails g devise:views
rails g devise:model user

### Custom Controllers

rails g devise:controllers users


add to routes.rb

`    devise_for :users, controllers: {
       sessions: 'users/sessions',
       registrations: 'users/registrations'
     }
   
`

Rails.application.routes.draw do

  #adds a default page to the application
  root to: "hello#index"

  get 'hello' => 'hello#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

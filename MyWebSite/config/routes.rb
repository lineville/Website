Rails.application.routes.draw do
  # Creates for index, show, new, edit, create, update and destroy actions
  get 'home' => 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

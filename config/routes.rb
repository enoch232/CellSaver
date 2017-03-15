Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/landing-page' => 'homes#landing_page'
  post '/users' => 'users#create'
  root 'homes#landing_page'
end

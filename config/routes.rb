Rails.application.routes.draw do

  devise_for :users
  root 'employees#index'


  get '/' => 'employees#staff'
  get '/employees' => 'employees#index'

  get 'employees/new' => 'employees#new'
  post 'employees' => 'employees#create'

  get 'employees/:id' => 'employees#show'

  get 'employees/:id/edit' => 'employees#edit'
  patch 'employees/:id' => 'employees#update'

  delete 'employees/:id' => 'employees#destroy'

  post '/search' => 'employees#search'
end

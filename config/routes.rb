Rails.application.routes.draw do
  get '/' => 'employees#staff'
  get '/employees' => 'employees#index'

  get 'employees/new' => 'employees#new'
  post 'employees' => 'employees#create'

  get 'employees/:id' => 'employees#show'

  get 'employees/:id/edit' => 'employees#edit'
  patch 'employees/:id' => 'employees#update'
end

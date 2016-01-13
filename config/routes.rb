Rails.application.routes.draw do
  get '/' => 'employees#staff'
  get '/all' => 'employees#all_staff'
end

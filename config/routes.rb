SmRc222::Application.routes.draw do
  resources :myapps

  root :to =>  proc {|env| [200,{},["Welcome TO RackApp!"]]}
  #root :to => HomeApp

  #redirect
  get '/about' => redirect('/aboutus')
  get '/aboutus' => 'myapps#index'

  #redirect to particular id, localhost:3000/m/2 will goes to myapps/2
  get '/m/:id' => redirect('/myapps/%{id}')

  #calling rack app
  #get '/processes' => ProcessesApp
end

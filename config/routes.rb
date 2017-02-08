Rails.application.routes.draw do
  
  get '/articles' =>'articles#index'
  get '/articles/create'=>'articles#create'
  get '/articles/new'=>'articles#new'
  get '/articles/:id'=>'articles#show'
  get '/articles/edit/:id'=>'articles#edit'
  get '/articles/:id/update'=>'articles#update'
  get '/articles/delete/:id' => 'articles#delete'
  end

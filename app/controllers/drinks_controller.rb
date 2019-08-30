class DrinksController < ApplicationController 

  get '/drinks' do 
    authenticate
    erb :'drinks/index'
  end 

end 

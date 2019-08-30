class DrinksController < ApplicationController 

  get '/drinks' do 
    erb :'drinks/index'
  end 

end 

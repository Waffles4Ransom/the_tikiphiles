class DrinksController < ApplicationController 

  get '/drinks' do 
    authenticate
    @drinks = Drink.all 
    erb :'drinks/index'
  end 

end 

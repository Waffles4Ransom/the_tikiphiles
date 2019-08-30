class DrinksController < ApplicationController 

  get '/drinks' do 
    authenticate
    @drinks = Drink.all 
    erb :'drinks/index'
  end 

  get '/drinks/new' do 
    authenticate
    erb :'/drinks/new'
  end 

  post '/drinks' do 
    user = current_user
    user.drinks.build(name: params[:name], )
    if user.save
      redirect '/drinks'
    else
      @error = "Invalid attempt, please try again."
      erb :'/drinks/new'
    end
  end 

  

end 

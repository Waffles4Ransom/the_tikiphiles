class DrinksController < ApplicationController 

  get '/drinks' do 
    authenticate
    @drinks = current_user.drinks
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

  get '/drinks/:id/edit' do 
    @drink = Drink.find_by(id: params[:id])
    authorized_user(@drink)
    erb :'/drinks/edit_drink'
  end 

  patch '/drinks/:id' do 
    @drink = Drink.find_by(id: params[:id])
    authorized_user(@drink)
    if @drink.update(params)
      redirect '/drinks'
    else 
      erb :'/drinks'
    end 
  end

  delete '/drinks/:id' do 
    drink = Drink.find_by(id: params[:id])
    authorized_user(drink)
    if drink 
      drink.destroy 
      redirect '/drinks'
    end 
  end 

end 

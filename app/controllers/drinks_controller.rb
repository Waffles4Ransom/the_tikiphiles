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
    @user = current_user
    @user.drinks.build(params)
    if @user.save
      redirect '/drinks'
    else
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
    @drink.update(name: params[:name], liquor: params[:liquor], served: params[:served], bar: params[:bar],location: params[:location], rating: params[:rating], image_path: params[:image_path])
    
    if @drink.errors.any?
      erb :'/drinks/edit_drink'
    else
      redirect '/drinks'
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

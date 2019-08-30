class SessionsController < ApplicationController

  get '/signup' do
    erb :'sessions/signup'
  end 

  get '/login' do 
    erb :'sessions/login'
  end

  post '/login' do 
    user = User.find_by(username: params[:username])
    if !!user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/drinks/index'
    else 
      @error = "Invalid attempt, please try again."
      erb :'sessions/login'
    end 
  end 

end 
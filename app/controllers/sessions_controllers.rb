class SessionsController < ApplicationController

  get '/signup' do
    redirect '/drinks' if logged_in?
    erb :'sessions/signup'
  end 

  get '/login' do 
    redirect '/drinks' if logged_in?
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

  post '/signup' do 
    @user = User.create(name: params[:name], username: params[:username], password: params[:password])
    if @user.errors.any?
      erb :'sessions/signup'
    else
      session[:user_id] = @user.id
      redirect '/drinks'
    end
  end 

end 
class ApplicationController < Sinatra::Base

  set :views, 'app/views'
  set :public_folder, 'public'
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET']


  get '/' do
    redirect '/drinks' if logged_in?
    erb :index
  end

  get '/home' do 
    authenticate
    @drinks = Drink.all 
    erb :home
  end 

  helpers do 

    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find_by(id: session[:user_id])
    end

    def authenticate
      if !logged_in?
        redirect '/login'
      end 
    end 

    def authorized_user(drink)
      authenticate
      redirect '/drinks' if !drink 
      redirect '/drinks' if current_user != drink.user
    end 

  end 

  not_found do 
    erb :not_found
  end 
  

end
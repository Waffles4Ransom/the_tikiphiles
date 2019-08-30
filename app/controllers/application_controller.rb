class ApplicationController < Sinatra::Base

  set :views, 'app/views'
  set :public_folder, 'public'
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET']


  get '/' do
    erb :index
  end

  helpers do 

    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end

    def authenticate
      if !logged_in?
        redirect '/login'
      end 
    end 

  end 
  

end
class ApplicationController < Sinatra::Base

  set :views, 'app/views'
  set :public_folder, 'public'
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET']

end
require 'sinatra'
set :session_secret, 'super secret'
# my_app.rb
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    session[:message_player1] = params[:player1]
    session[:message_player2] = params[:player2]
    session[:p2points] = 100
    session[:p1points] = 100
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:message_player1]
    @player2 = session[:message_player2]
   
    @p2points = session[:p2points] 
    
    erb :play
  end

  post '/attack' do
    session[:p2points] = session[:p2points] -  5
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end



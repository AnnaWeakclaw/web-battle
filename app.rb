require 'sinatra'
set :session_secret, 'super secret'
# my_app.rb
require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1]).name
    $player2 = Player.new(params[:player2]).name
    session[:p2points] = 100
    session[:p1points] = 100
    redirect '/play'
  end

  get '/play' do
    
   
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



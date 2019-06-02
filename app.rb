require 'sinatra'
set :session_secret, 'super secret'
# my_app.rb
require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    $game.attack($game.current_turn)
    $game.switch_turn
    redirect '/result' if $game.current_turn.points == 0
    redirect '/play'
  end

   get '/result' do
   "You Lost!"
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end



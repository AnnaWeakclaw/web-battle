require 'sinatra'
set :session_secret, 'super secret'
# my_app.rb
require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  
  before do
    @game = Game.instance
  end
  
  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    @game.attack(@game.current_turn)
    @game.switch_turn
    # ideally I want this logic to be in Model and not in Controller
    redirect '/result' if @game.current_turn.points == 0
    redirect '/play'
  end

   get '/result' do
   "You Lost!"
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end



require 'sinatra'
set :session_secret, 'super secret'
# my_app.rb
require 'sinatra/base'

class Battle < Sinatra::Base
  # ... app code here ...
  get '/' do
    "Hello Battle"
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end



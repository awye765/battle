
require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p session[:player_1_name] = params[:player_1_name]
    p session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    p @player_1_name = session[:player_1_name]
    p @player_2_name = session[:player_2_name]
    erb(:play)
  end

   # start the server if ruby file executed directly
  run! if app_file == $0
end

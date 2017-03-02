require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name_1 = $player_1.name
    @name_2 = $player_2.name
    erb(:play)
  end

  post '/names' do
    $player_1 = Player.new(params[:name_1])
    $player_2 = Player.new(params[:name_2])
    redirect '/play'
  end

  run! if app_file == $0
end

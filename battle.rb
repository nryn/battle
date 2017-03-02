require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name_1 = session[:name_1]
    @name_2 = session[:name_2]
    erb(:play)
  end

  post '/names' do
    session[:name_1] = params[:name_1]
    session[:name_2] = params[:name_2]
    redirect '/play'
  end

  run! if app_file == $0
end

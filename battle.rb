require 'sinatra/base'

class Battle < Sinatra::Base
  set :sessions, true

  get '/' do
    'Testing infrastructure working!'
  end
  run! if app_file == $0
end

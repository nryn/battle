require 'sinatra/base'

class Battle < Sinatra::Base
  set :sessions, true

  get '/' do
    "Hello world!"
  end

  p app_file, $0

  run! if app_file == $0
end

require 'sinatra/base'
require_relative './models/player' # relative to the location of this file. 
# on same level. relative to my position

class Rockpaperscissors < Sinatra::Base


	set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do # telling server, give me what you have, reading data.
    erb :index
  end

  post '/new_player' do
  	@name = params[:name] # sending data to index.erb
  	player = Player.new(name: @name)
  	erb :index
  end

# post '/new_player' do
#     "Hello World"
#   end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'
require_relative './models/player' # relative to the location of this file. 
# on same level. relative to my position

class Rockpaperscissors < Sinatra::Base


	set :views, Proc.new { File.join(root, "..", "views") } # tell sinatra where to look for your erb page

	enable :sessions

  get '/' do # telling server, give me what you have, reading data.
    puts session.inspect
    erb :index
  end

  post '/new_player' do
  	puts session.inspect
  	@name = params[:name] # sending data to index.erb
  	# session[:me] = params[:name]
  	player = Player.new(name: @name)
  	erb :index
  end

  run! if app_file == $0
end

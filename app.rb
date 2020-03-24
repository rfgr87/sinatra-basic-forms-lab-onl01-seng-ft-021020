require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new'
    erb :create_puppy
  end
  
  post '/create_puppy'
    @puppy = Puppy.new(params[:name],params[:breed],params[:age])
    
    erb :display_puppy
  end
  
end

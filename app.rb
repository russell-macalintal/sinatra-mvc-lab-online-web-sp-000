require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @translator = PigLatinizer.new(params[:user_phrase])
    erb :translated
  end
end

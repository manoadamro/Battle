require 'sinatra/base'
require './lib/player'
require './lib/game'

$game = nil

# in app.rb
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p1 = Player.new(params[:player1])
    p2 = Player.new(params[:player2])
    $game = Game.new(p1, p2)
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    $game.attack
    session[:message] = "#{$game.player1.name} attacked #{$game.player2.name}"
    redirect to('/play')
  end

  run! if app_file == $PROGRAM_NAME
end

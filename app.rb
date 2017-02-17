require 'sinatra'
require './config'

get '/' do
	erb :index
end

post '/iniciar' do
	session["J1"]="#{params['jugador']}"
	erb :juego
end
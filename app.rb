require 'sinatra'
require './config'
require './lib/ahorcadoDigital.rb'

get '/' do
	erb :index
end

post '/iniciar' do
	session["J1"]="#{params['jugador']}"
	session["juego"] = AhorcadoDigital.new
	session["juego"].obtenerPalabra
	erb :juego
end

post '/buscar' do
	session["letra"] = "#{params['caracter']}"
end
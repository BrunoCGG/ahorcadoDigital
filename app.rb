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
	session["carac"] = ""
	erb :juego
	#session["carac"] = ""
end

post '/buscar' do
	session["carac"] = "#{params['caracter']}"
	session["juego"].validaLetra session["carac"]
	
	erb :juego
end
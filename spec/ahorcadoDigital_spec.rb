require './lib/ahorcadoDigital.rb'

#attr_accessor :palabra
 
describe AhorcadoDigital do
    it "Mostrar palabra" do
    	ahorcadoDigital = AhorcadoDigital.new
        #expect(ahorcadoDigital.obtenerPalabra).to eq nil
    end

    it "Comparar longitud de palabra vs palabra oculta" do
    	ahorcadoDigital = AhorcadoDigital.new
        expect(ahorcadoDigital.obtenerPalabra.size).to eq ahorcadoDigital.mostrarPalabra.size
    end

    it "Buscar una letra" do
    	ahorcadoDigital = AhorcadoDigital.new
    	puts ahorcadoDigital.obtenerPalabra
    	ahorcadoDigital.validaLetra "a"
    	puts ahorcadoDigital.mostrarPalabra
        expect(ahorcadoDigital.obtenerPalabra.size).to eq ahorcadoDigital.mostrarPalabra.size
    end
end

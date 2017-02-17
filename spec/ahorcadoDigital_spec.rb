require './lib/ahorcadoDigital.rb'
 
describe AhorcadoDigital do
    it "Mostrar palabra sombrilla" do
    	ahorcadoDigital = AhorcadoDigital.new
        expect(ahorcadoDigital.obtenerPalabra).to eq "sombrilla"
    end
end

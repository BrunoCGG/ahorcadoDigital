class AhorcadoDigital

	def initialize palabra = ""
		@palabras = ["sombrilla","bola","automovil","jarra","elefante","perro","mujer","scrum","libreta","agua"]
		@palabra = palabra
		@palabraOculta = palabra
		@palabraDescubierta = palabra
    end

    def obtenerPalabra
        r= (rand() * 9).to_i
        @palabra = @palabras[r]
        @palabraOculta = inicializarPalabraOculta
    	return @palabra
    end

    def mostrarPalabra
        return @palabraOculta
    end

private

	def inicializarPalabraOculta
		@palabraOculta = '-' * @palabra.length
	end

	def encriptaPalabra

	end

end
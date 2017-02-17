class AhorcadoDigital

	def initialize palabra = ""
		@palabras = ["sombrilla","bola","automovil","jarra","elefante","perro","mujer","scrum","libreta","agua"]
		@palabra = palabra
		@palabraOculta = palabra
		@fallas = 0
		@LIMITE_FALLAS = 5 
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

    def numFallas
    	return @fallas
    end

    def validaPalabra
    	if (expect(@palabra).to eq @palabraOculta)
    	   return "GANASTE"
    	else
    	   if @numFallas < @LIMITE_FALLAS
     	   	 return "SIGUE INTENTANDO"
     	   else
     	   	 return "HAS SIDO AHORCADO"
     	   end
    	end
    end

    def validaLetra letra
    	localizado = 0
		for i in 0..@palabra.length-1
			if(@palabra[i] == letra)
				@palabraOculta[i] = letra
				localizado = localizado + 1
			end
		end
		if localizado = 0
	    	@fallas = @fallas + 1
	    end
	    return localizado
	end

	private
	def inicializarPalabraOculta
		@palabraOculta = '-'*@palabra.length
	end

end
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

    def validaPalabra
    	if @palabra == @palabraOculta
    	   return "GANASTE"
    	else
     	   if @fallas == @LIMITE_FALLAS
     	   	 return "HAS SIDO AHORCADO, la palabra correcta es " + @palabra
     	   else
     	   	 return "Sigue Intentando. Llevas " + @fallas.to_s + " intentos de " + @LIMITE_FALLAS.to_s
     	   end
	   	end
    end

    def validaLetra letra
    	if @fallas < @LIMITE_FALLAS then
	    	localizado = 0
			for i in 0..@palabra.length-1
				if(@palabra[i] == letra)
					@palabraOculta[i] = letra
					localizado = localizado + 1
				end
			end
			if localizado == 0
		    	@fallas = @fallas + 1
		    end
		    return localizado
		end
	end

	private
	def inicializarPalabraOculta
		@palabraOculta = '-'*@palabra.length
	end

end
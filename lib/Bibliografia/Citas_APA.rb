module Bibliografia
	class Cita_APA
	    attr_accessor :list1, :list2

	    def initialize
		@list1 = Lista.new
		@list2 = Lista.new
	    end

	    def nombre(other)
		i = 0
		if(other.autores.length>1)
		    while(i<other.autores.length-2)
		        nombre = "#{nombre}"+"#{other.apellidos[i]}, "+"#{other.autores[i][0]}., "
		        i=i+1
		    end
		    nombre = "#{nombre}"+"#{other.apellidos[i]}, "+"#{other.autores[i][0]}. & "
		    i = i+1
		end
		nombre = "#{nombre}"+"#{other.apellidos[i]}, "+"#{other.autores[i][0]}."
	    end
	    
	    def insertar(b)
		@list1.insertar(b)
		@list2 =@list1.sort
	    end    
	end
end

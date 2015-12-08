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

	def insert(other)
		@list1.push(other)
		@list2 = @list1.sort
	end    

	def show(other)
		size = @list2.length
		i=0
		while(i<size)
		cadena = "#{nombre(list2[i])}\n   "
		cadena = "#{cadena}"+"#{list2[i].titulo}\n   "
		cadena = "#{cadena}"+"(#{list2[i].serie})\n   "
		cadena = "#{cadena}"+"#{list2[i].num_editorial}; #{list2[i].edicion} edition (#{list2[i].GetFecha})\n   "
            cadena = "#{cadena}"+"#{list2[i].GetIsbn}\n"
		i = i+1
		end
		cadena = cadena[0..-2]
	end

	end
end

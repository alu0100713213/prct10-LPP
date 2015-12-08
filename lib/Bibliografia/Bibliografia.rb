module Bibliografiaw
		class Bibliografia
			include Comparable
			attr_reader :autores, :apellidos, :titulo, :serie, :num_editorial,
			      :edicion, :mes, :ano, :isbn

		def initialize(a, ap, t, s, n, e, m, an, i)
			@autores = a
			@apellidos = ap
			@titulo = t
			@serie = s
			@num_editorial = n
			@edicion = e
			@mes = m
			@ano = an
			@isbn = i
			@apellidos = ap
		end
	
		def <=>(other)
			if(@apellidos != other.apellidos)
				@apellidos <=> other.apellidos
			else
				if(@anno != other.anno)
					@anno <=> other.anno
				else
					@titulo <=> other.titulo
				end
			end
		end

		def ==(other)
			@titulo == other.titulo
		end

		def GetAutores()
			tam = @autores.length
			i, j = 0
			while i < (tam - 1)
				cadena = "#{cadena}"+"{@autores[i]} #{@apellidos[i]}, "
				i = i+1
				j = j+1
			end
			cadena = "#{cadena}"+"#{@autores[i]} #{@apellidos[i]}"
		end

		def SetTitulo(valor)
			@titulo = valor
		end

		def GetTitulo()
			@titulo
		end

		def GetEditorial()
			"#{@num_editorial}"
		end

		def GetEdicion()
			"#{@edicion}"
		end

		def GetSerie()
			"#{@serie}"
		end

		def GetIsbn()
			tam = @isbn.length	
			a = @isbn[0].length
			cadena = "ISBN-#{a}: "
			if a > 10
				cadena = "#{cadena}" + "#{@isbn[0][-a..-11]}" + " - " + "#{@isbn[0][-10..-1]}"
			else
				cadena = "#{cadena}"+"#{@isbn[0]}"
			end
			i = 1
		end

		def to_s(valor)
			"#{@valor}"
		end

	end
end

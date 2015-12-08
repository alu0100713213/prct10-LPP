module Bibliografia
		class Bibliografia
			include Comparable
			attr_reader :autores, :apellidos, :titulo, :serie, :num_editorial,
			      :edicion, :dia, :mes, :ano, :isbn

		def initialize(a, ap, t, s, n, e, d, m, an, i)
			@autores = a
			@apellidos = ap
			@titulo = t
			@serie = s
			@num_editorial = n
			@edicion = e
			@dia = d
			@mes = m
			@ano = an
			@isbn = i
		end
	
		def <=>(other)
			if(@apellidos != other.apellidos)
				@apellidos <=> other.apellidos
			else
				if(@ano != other.ano)
					@anno <=> other.ano
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

		def GetTitulo()
			"#{@titulo}"
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

		def GetFecha()
			"#{@dia}"+"#{@mes}"+"#{@ano}"		
		end

		def to_s(valor)
			"#{@valor}"
		end

	end

	class Libro < Bibliografia
		def initialize(a, ap, t, s, n, e, d, m, an, i)
			@autores = a
			@apellidos = ap
			@titulo = t
			@serie = s
			@num_editorial = n
			@edicion = e
			@dia = d
			@mes = m
			@ano = an
			@isbn = i
		end
	end

	class Art_Libro < Bibliografia
		def initialize(a, ap, t, s, n, e, l, d, m, an, i, si)
			@autores = a
			@apellidos = ap
			@titulo = t
			@serie = s
			@num_editorial = n
			@edicion = e
			@lugar = l
			@dia = d
			@mes = m
			@ano = an
			@isbn = i
			@sinopsis = si
		end
	end

	class Art_Revista < Bibliografia
		def initialize(a, ap, nom, d, m , an, lug, id)
			@autores = a
			@apellidos = ap
			@nom_revista = nom
			@dia = d
			@mes = m
			@ano = an
			@lugar_pub = lug
			@idioma = id
		end

	end

	class Art_Periodico < Bibliografia
		attr_accessor :pub

		def initialize(a, ap, d, m, an, t, n_p, pa)
			@autores = a
			@apellidos = ap		
			@dia = d
			@mes = m
			@ano = an
			@titulo = t			
			@nom_periodico = n_p
			@num_paginas = pa
		end

	end


	class Doc_Digital < Bibliografia
		def initialize(a, ap, t, e, me, d, m, an, lug, url)
			@autores = a
			@apellidos = ap		
			@titulo = t
			@edicion = e			
			@medio = me
			@dia = d
			@mes = m
			@ano = an			
			@lugar_pub = lug
			@url = url
		end

	end

end




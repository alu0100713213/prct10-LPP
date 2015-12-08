module Bibliografia
	require_relative "Bibliografia"

	class Art_Periodico < Bibliografia
		attr_accessor :pub

		def initialize(a, ap, fech, t, n_p, pa)
			objeto(a, ap, t)
			@fecha_pub = fech
			@nom_periodico = n_p
			@num_paginas = pa
		end

	end
end

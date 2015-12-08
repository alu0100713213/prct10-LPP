module Bibliografia
	require_relative "Bibliografia"

	class Art_Revista < Bibliografia
		attr_accessor :pub

		def initialize(a, ap, t, s, n, e, m, an, i, nom)
			objeto(a, ap, t, s, n, e, m, an, i, si)
			@nom_revista = nom
		end

	end
end

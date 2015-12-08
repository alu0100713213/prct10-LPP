module Bibliografia
	require_relative "Bibliografia"

	class Libro < Bibliografia

		def initialize(a, ap, t, s, n, e, l, m, an, i, si)
			objeto(a, ap, t, s, n, e, m, an, i)
			@lugar = l
			@sinopsis = si
		end

	end
end

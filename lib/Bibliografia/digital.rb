module Bibliografia
	require_relative "Bibliografia"

	class Art_Digital < Bibliografia
		attr_accessor :pub

		def initialize(a, ap, fech1, t, e, me, lug, url)
			objeto(a, ap, t, n, e)
			@fecha_pub = fech1
			@medio = me
			@lugar_pub = lug
			@url = url
		end

	end
end

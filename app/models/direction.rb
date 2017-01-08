class Direction

	def cardinal_direction(dir)
		return "N" if (348..360).include?(dir)
		return "N" if (0..10).include?(dir)
		return "NNE" if (11..34).include?(dir)
		return "NE" if (35..56).include?(dir)
		return "ENE" if (57..79).include?(dir)
	end
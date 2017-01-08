class Direction

	def cardinal_direction(dir)
		return "N" if (349..360).include?(dir)
		return "N" if (0..10).include?(dir)
		return "NNE" if (11..34).include?(dir)
		return "NE" if (35..56).include?(dir)
		return "ENE" if (57..79).include?(dir)
		return "E" if (80..101).include?(dir)
		return "ESE" if (102..124).include?(dir)
		return "SE" if (125..146).include?(dir)
		return "SSE" if (147..169).include?(dir)
		return "S" if (170..191).include?(dir)
		return "SSW" if (192..214).include?(dir)
		return "SW" if (215..237).include?(dir)
		return "WSW" if (238..259).include?(dir)
		return "W" if (260..281).include?(dir)
		return "WNW" if (282..304).include?(dir)
		return "NW" if (305..327).include?(dir)
		return "NNW" if (328..348).include?(dir)
	end
end
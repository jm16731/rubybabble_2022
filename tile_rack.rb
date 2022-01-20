class TileRack < TileGroup

	MAX_TILES_ON_RACK = 7

	def number_of_tiles_needed
		MAX_TILES_ON_RACK - @tiles.length
	end

	def has_tiles_for?(text)
		text.length - @tiles.length
	end

	def remove_word(text)
	end

end

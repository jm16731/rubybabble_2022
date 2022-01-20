class TileGroup

	attr_accessor :tiles

	def initialize()
		@tiles = []
	end

	def append(tile)
		@tiles.append(tile)
	end

	def remove(tile)
		@tiles.delete_at(@tiles.index(tile) || @tiles.length)
	end

	def hand
		@hand = ""
		@tiles.each {|tile| @hand += tile.to_s}
		@hand
	end

end

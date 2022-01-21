class TileGroup

	attr_accessor :tiles

	def initialize()
		@tiles = []
	end

	def append(tile)
		@tiles.append(tile)
	end

	#delete only the first occurence of a value in the array of tiles
	#algorithm by Weston Ganger
	#https://westonganger.com/posts/delete-the-first-instance-of-value-from-array-in-ruby
	def remove(tile)
		@tiles.delete_at(@tiles.index(tile) || @tiles.length)
	end

	def hand
		@hand = ""
		@tiles.each {|tile| @hand += tile.to_s}
		@hand
	end

end

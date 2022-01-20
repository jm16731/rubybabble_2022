require_relative "tile_group.rb"
require_relative "tile_bag.rb"

class Word < TileGroup

	def initialize()
		@tiles = []
	end

	def score
		@score = 0
		@tiles.each {|tile| @score += TileBag.points_for(tile)}
		@score
	end

end

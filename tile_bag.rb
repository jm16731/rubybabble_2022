class TileBag

	def initialize
			@tile_bag = [
				:Q, :Z, :J, :K, :X,
				:F, :F, :H, :H, :V, :V, :W, :W, :Y, :Y,
				:B, :B, :C, :C, :M, :M, :P, :P,
				:G, :G, :G, :D, :D, :D, :D,
				:L, :L, :L, :L, :S, :S, :S, :S, :U, :U, :U, :U,
				:N, :N, :N, :N, :N, :N,
				:R, :R, :R, :R, :R, :R,
				:T, :T, :T, :T, :T, :T,
				:O, :O, :O, :O, :O, :O, :O, :O,
				:I, :I, :I, :I, :I, :I, :I, :I, :I,
				:A, :A, :A, :A, :A, :A, :A, :A, :A,
				:E, :E, :E, :E, :E, :E, :E, :E, :E, :E, :E, :E
			]

			@tile_bag.shuffle!
	end

	def draw_tile
		@tile_bag.pop
	end

	def empty?
		@tile_bag.empty?
	end

	def self.points_for(tile)
	end
end

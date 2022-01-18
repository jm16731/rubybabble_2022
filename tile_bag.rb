class TileBag

	@@point_values = {
		Q: 10, Z: 10,
		J: 8, X: 8,
		K: 5,
		F: 4, H: 4, V: 4, W: 4, Y: 4,
		B: 3, C: 3, M: 3, P: 3,
		D: 2, G: 2,
		E: 1, A: 1, I: 1, O: 1, N: 1, R: 1, T: 1, L: 1, S: 1, U: 1
	}

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
		@@point_values[tile]
	end
end

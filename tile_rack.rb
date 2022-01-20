class TileRack < TileGroup

	MAX_TILES_ON_RACK = 7

	def number_of_tiles_needed
		MAX_TILES_ON_RACK - @tiles.length
	end

	def has_tiles_for?(text)
		text_as_array = text.chars.map { |x| x.to_sym }
		(text_as_array.subtract_once(@tiles)).empty?
		#but fails on duplicates
		#text = "text"
		#@tiles = [:A, :E, :T, :V, :X]
	end

	def remove_word(text)
	end

	private

	Array.class_eval { def subtract_once(values);
    counts = values.inject(Hash.new(0)) { |h, v| h[v] += 1; h };
    reject { |e| counts[e] -= 1 unless counts[e].zero? };
  end }

end

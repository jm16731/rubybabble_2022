require_relative "word.rb"

class TileRack < TileGroup

	MAX_TILES_ON_RACK = 7

	def number_of_tiles_needed
		MAX_TILES_ON_RACK - @tiles.length
	end

	def has_tiles_for?(text)
		text_as_array = text.chars.map { |x| x.to_sym }
		(text_as_array.subtract_once(@tiles)).empty?
	end

	def remove_word(text)
		@word = Word.new
		text_as_array = text.chars.map { |x| x.to_sym }
		text_as_array.each { |x| @word.append(x)}
		text_as_array.each { |x| remove(x)}
		@word
	end

	private

	#this class is from glebm of stackoverflow.com
	#https://stackoverflow.com/questions/3852755/ruby-array-subtraction-without-removing-items-more-than-once
	#used so the chosen algorithm for has_tiles_for? can work with duplicate letters
	Array.class_eval { def subtract_once(values);
    counts = values.inject(Hash.new(0)) { |h, v| h[v] += 1; h };
    reject { |e| counts[e] -= 1 unless counts[e].zero? };
  end }

end

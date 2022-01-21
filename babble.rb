require 'spellchecker'
require 'tempfile'
require_relative 'tile_bag.rb'
require_relative 'tile_rack.rb'
require_relative 'word.rb'

class Babble

	def initialize()
		@tile_bag = TileBag.new
		@tile_rack = TileRack.new
		@score = 0
	end

	def run()
		user_input = ""
		until user_input == ":quit"
			user_input = ":quit"
			#refresh_rack
			#puts "Tile Rack: {letters on rack}"
			#puts "Please guess a word"
			#user_input = gets
			#if user_input == ":quit"
				#next
			#end
			#if not spellcheck(user_input)
				#puts "Not a valid word"
				#next
			#end
			#if not @tile_rack.has_tiles_for?(user_input)
				#puts "Not enough tiles"
				#next
			#end
			#puts "You made #{user_input} for #{score(user_input)}"
			#puts "Current Total Score: #{@score}"

		end
		puts "Thanks for playing, total score: #{@score}"
	end

	private

	def refresh_rack
		until (@tile_rack.number_of_tiles_needed == 0 || @tile_bag.empty?)
			@tile_rack.append(@tile_bag.draw_tile)
		end
	end

	def spellcheck(word)
		Spellchecker::check(word)[0][:correct]
	end

	def score(word)
		@word = @tile_rack.remove_word(word)
		@score += @word.score
	end

end
Babble.new.run

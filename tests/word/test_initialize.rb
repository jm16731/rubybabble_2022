require "minitest/autorun"
require_relative "../../word.rb"

class Word::TestInitialize < MiniTest::Test

	def setup
		@word = Word.new
	end

	def test_create_empty_word
		skip "Test not yet implemented"
	end

end

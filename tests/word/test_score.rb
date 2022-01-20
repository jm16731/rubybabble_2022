require "minitest/autorun"
require_relative "../../word.rb"

class Word::TestScore < MiniTest::Test

  def setup
    @word = Word.new
  end

  def test_empty_word_should_have_score_of_zero
    assert_equal 0, @word.score
  end

  def test_score_a_one_tile_word
    @word.append(:A)
    assert_equal 1, @word.score
  end

  def test_score_a_word_with_multiple_different_tiles
    @word.append(:C)
    @word.append(:A)
    @word.append(:T)
    assert_equal 5, @word.score
  end

  def test_score_a_word_with_recurring_tiles
    @word.append(:M)
    @word.append(:A)
    @word.append(:R)
    @word.append(:R)
    @word.append(:O)
    @word.append(:W)
    assert_equal 11, @word.score
  end

end

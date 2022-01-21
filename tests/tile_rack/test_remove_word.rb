require "minitest/autorun"
require_relative "../../tile_rack.rb"
require_relative "../../word.rb"

class TileRack::TestRemoveWord < MiniTest::Test

  def setup
    @tile_rack = TileRack.new
    @word_one = Word.new
    @word_one.append(:C)
    @word_one.append(:A)
    @word_one.append(:T)

    @word_two = Word.new
    @word_two.append(:M)
    @word_two.append(:A)
    @word_two.append(:R)
    @word_two.append(:R)
    @word_two.append(:O)
    @word_two.append(:W)
  end

  def test_can_remove_a_word_whose_letters_are_in_order_on_the_rack
    @tile_rack.append(:C)
    @tile_rack.append(:A)
    @tile_rack.append(:T)
    @word = @tile_rack.remove_word("CAT")
    assert_equal 7, @tile_rack.number_of_tiles_needed
    assert_equal false, @tile_rack.has_tiles_for?("CAT")
    assert_equal @word_one.tiles.sort, @word.tiles.sort
  end

  def test_can_remove_a_word_whose_letters_are_not_in_order_on_the_rack
    @tile_rack.append(:A)
    @tile_rack.append(:C)
    @tile_rack.append(:T)
    @word = @tile_rack.remove_word("CAT")
    assert_equal @word_one.tiles.sort, @word.tiles.sort
    assert_equal 7, @tile_rack.number_of_tiles_needed
    assert_equal false, @tile_rack.has_tiles_for?("CAT")
  end

  def test_can_remove_word_with_duplicate_letters
    @tile_rack.append(:M)
    @tile_rack.append(:A)
    @tile_rack.append(:R)
    @tile_rack.append(:R)
    @tile_rack.append(:O)
    @tile_rack.append(:W)
    @word = @tile_rack.remove_word("MARROW")
    assert_equal @word_two.tiles.sort, @word.tiles.sort
    assert_equal 7, @tile_rack.number_of_tiles_needed
    assert_equal false, @tile_rack.has_tiles_for?("MARROW")
  end

  def test_can_remove_word_without_removing_unneeded_duplicate_letters
    @tile_rack.append(:M)
    @tile_rack.append(:A)
    @tile_rack.append(:R)
    @tile_rack.append(:R)
    @tile_rack.append(:O)
    @tile_rack.append(:W)
    @tile_rack.append(:R)
    @word = @tile_rack.remove_word("MARROW")
    assert_equal @word_two.tiles.sort, @word.tiles.sort
    assert_equal 6, @tile_rack.number_of_tiles_needed
    assert_equal false, @tile_rack.has_tiles_for?("MARROW")
  end

end

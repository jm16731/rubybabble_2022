require "minitest/autorun"
require_relative "../../tile_rack.rb"

class TileRack::TestHasTilesFor < MiniTest::Test

  def setup
    @tile_rack = TileRack.new
  end

  def test_rack_has_needed_letters_when_letters_are_in_order_no_duplicates
    @tile_rack.append(:H)
    @tile_rack.append(:I)
    assert_equal true, @tile_rack.has_tiles_for?("HI")
  end

  def test_rack_has_needed_letters_when_letters_are_not_in_order_no_duplicates
    @tile_rack.append(:I)
    @tile_rack.append(:H)
    assert_equal true, @tile_rack.has_tiles_for?("HI")
  end

  def test_rack_doesnt_contain_any_needed_letters
    assert_equal false, @tile_rack.has_tiles_for?("HI")
  end

  def test_rack_contains_some_but_not_all_needed_letters
    @tile_rack.append(:H)
    assert_equal false, @tile_rack.has_tiles_for?("HI")
  end

  def test_rack_contains_a_word_with_duplicate_letters
    @tile_rack.append(:T)
    @tile_rack.append(:E)
    @tile_rack.append(:X)
    @tile_rack.append(:T)
    assert_equal true, @tile_rack.has_tiles_for?("TEXT")
  end

  def test_rack_doesnt_contain_enough_duplicate_letters
    @tile_rack.append(:T)
    @tile_rack.append(:E)
    @tile_rack.append(:X)
    assert_equal false, @tile_rack.has_tiles_for?("TEXT")
  end

end

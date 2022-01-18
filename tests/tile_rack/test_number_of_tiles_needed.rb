require "minitest/autorun"
require_relative "../../tile_rack.rb"

class TileRack::TestNumberOfTilesNeeded < MiniTest::Test

  def setup
		@tile_rack = TileRack.new
	end

  def test_empty_tile_rack_should_need_max_tiles
    skip "Test not yet implemented"
  end

  def test_tile_rack_with_one_tile_should_need_max_minus_one_tiles
    skip "Test not yet implemented"
  end

  def test_tile_rack_with_several_tiles_should_need_some_tiles
    skip "Test not yet implemented"
  end

  def test_that_full_tile_rack_doesnt_need_any_tiles
    skip "Test not yet implemented"
  end

end

require "minitest/autorun"
require_relative "../../tile_group.rb"

class TileGroup::TestInitialize < MiniTest::Test

	def setup
		@tile_group = TileGroup.new
	end

	def test_create_empty_tile_group
		assert_equal true, @tile_group.tiles.empty?
	end

end

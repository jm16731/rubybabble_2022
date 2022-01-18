require "minitest/autorun"
require_relative "../../tile_group.rb"

class TileGroup::TestAppend < MiniTest::Test

	def setup
		@tile_group = TileGroup.new
	end

	def test_append_one_tile
		@tile_group.append(:A)
		assert_equal [:A], @tile_group.tiles
	end

	def test_append_many_tiles
		@tile_group.append(:A)
		@tile_group.append(:B)
		@tile_group.append(:C)
		assert_equal [:A, :B, :C], @tile_group.tiles
	end

	def test_append_duplicate_tiles
		@tile_group.append(:A)
		@tile_group.append(:A)
		@tile_group.append(:A)
		assert_equal [:A, :A, :A], @tile_group.tiles
	end

end

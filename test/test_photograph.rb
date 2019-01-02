require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'
require 'pry'


class PhotographTest < Minitest::Test

  def setup
    @attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: 4,
      year: 1954
      }

    @photograph = Photograph.new(@attributes)
  end

  def test_photograph_exists
    assert_instance_of Photograph, @photograph
  end

  def test_it_has_id
    assert_equal "1", @photograph.id
  end

  def test_it_has_name
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", @photograph.name
  end

  def test_it_has_artist_id
    assert_equal 4, @photograph.artist_id
  end
end

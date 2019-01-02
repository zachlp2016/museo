require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/artist'
require 'pry'


class ArtistTest < Minitest::Test

  def setup
    @attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
      }

    @artist = Artist.new(@attributes)
  end

  def test_photograph_exists
    assert_instance_of Artist, @artist
  end

  def test_it_has_been_born
    assert_equal "1902", @artist.born
  end

  def test_it_has_died
    assert_equal "1984", @artist.died
  end

  def test_it_has_a_country
    assert_equal "United States", @artist.country
  end
end

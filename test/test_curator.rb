require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'
require './lib/photograph'
require 'pry'


class ArtistTest < Minitest::Test

  def setup
    @curator = Curator.new
    @photo1_data = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "1",
      year: "1954"
      }

    @photo2_data = {
      id: "2",
      name: "Moonrise, Hernandez",
      artist_id: "2",
      year: "1941"
      }

    @boywithbottles = Photograph.new(@photo1_data)
    @moonrise = Photograph.new(@photo2_data)


  end

  def test_curator_exists
    assert_instance_of Curator, @curator
  end

  def test_curator_has_artists
    assert_equal [], @curator.artists
  end

  def test_curator_has_photographs
    assert_equal [], @curator.photographs
  end

  def test_you_can_add_photos
    assert_equal @curator.add_photograph(@photo_1)
    assert_equal @curator.add_photograph(@photo_2)
  end

  def test_you_can_retrieve_photographs
    skip
    assert_equal @curator.photographs
  end

  def test_you_have_attributes_of_photos
    skip
    assert_equal @curator.photographs.first
  end
end

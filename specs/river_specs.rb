require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bears.rb')


class RiverTest < MiniTest::Test
  def setup
    @bear = Bears.new("Ted","Polar Bear")
    @river = River.new("Amazon")
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Piranha")


  end

  def test_add_fish
    @river.add_fish(@fish1)
    assert_equal(1,@river.fishcount)
  end

  def test_remove_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.remove_fish(@fish1)
    assert_equal(1,@river.fishcount)
  end

end

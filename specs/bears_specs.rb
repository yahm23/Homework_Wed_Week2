require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bears.rb')


class BearsTest < MiniTest::Test
  def setup
    @bear = Bears.new("Ted","Polar Bear")

    @river = River.new("Amazon")

    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Piranha")
  end


  def test_stomach_count
    assert_equal(0, @bear.stomach_count)
  end

  def test_take_fish_from_river
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)

    @bear.take_fish_from_river(@river,@fish1)
    assert_equal(2,@river.fishcount)
    assert_equal(1,@bear.stomach_count)

  end

  def test_roar
    assert_equal("roar", @bear.roar(1))
  end


end

require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bears.rb')


class FishTest < MiniTest::Test
  def setup
    @bear = Bears.new("Ted","Polar Bear")
    @river = River.new("Amazon",400)
    @fish = Fish.new("Salmon")
  end

end

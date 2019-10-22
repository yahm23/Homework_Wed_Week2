class River

  require_relative('fish.rb')
  require_relative('bears.rb')

  attr_reader :name, :fisharray

  def initialize(name)
    @name = name
    @fisharray = []
  end


  def add_fish(fish)
    @fisharray.push(fish)
  end

  def remove_fish(fish)
    @fisharray.delete(fish)
  end

  def fishcount
    return @fisharray.length
  end


  # def fish_remove(amount)
  #   @fishcount -= amount
  # end

end

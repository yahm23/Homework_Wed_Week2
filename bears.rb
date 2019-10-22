class Bears

require_relative('river.rb')
require_relative('fish.rb')

attr_reader :name, :type, :stomach_count

def initialize(name,type)
  @name = name
  @type = type
  @stomach_count= 0
end

def take_fish_from_river(river,fish)
  for i in river.fisharray
    if fish==i
     river.remove_fish(fish)
     @stomach_count +=1
   end
  end

  def roar(x)

    return "roar"
     
  end

end



end

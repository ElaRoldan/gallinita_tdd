class LayingHen
  attr_accessor :age

  def initialize
    @age = 0
    @eggs = 0
    @hatched_hours = 0
  end

  def age!
    @age += 1
    @eggs += 4 if @age > 3
  end

  def any_eggs?
    @eggs > 0 ? true : false
  end

  def collect
    @eggs -= 1
    egg = Egg.new(@hatched_hours)
  end

  def old?
    @age > 10 ? true : false
  end

  def increase_hatched_hour(hours)
    @hatched_hours = hours
  end
end

class Egg

  def initialize(hatched_hours)
    @hatched_hours = hatched_hours
  end

  def rotten?
    @hatched_hours > 3 ? true : false
  end

end




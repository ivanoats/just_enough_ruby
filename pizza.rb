class Pizza
  def initialize
    @dough = "wheat"
    @cheese = "mozzarella"
  end

  def dough=(kind)
    @dough = kind
  end

  def dough
    @dough
  end

  def bake
    puts "putting pizza in oven"\
  end
end

class Pepperoni < Pizza

  def is_spicy?
    true
  end
end

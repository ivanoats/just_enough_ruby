class Pizza
  def initialize
    @dough = "wheat"
    @cheese = "mozzarella"
  end

  attr_accessor :dough, :cheese, :crust

  def taste(how)
    "tastes #{how}!"
  end

  def bake
    puts "putting pizza in oven"
  end
end

class Pepperoni < Pizza

  def is_spicy?
    true
  end
end

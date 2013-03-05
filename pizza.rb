class Pizza
  @dough = "wheat"
  @cheese = "mozzarella"

  def bake
    puts "putting pizza in oven"\
  end
end

class Pepperoni < Pizza

  def is_spicy?
    true
  end
end

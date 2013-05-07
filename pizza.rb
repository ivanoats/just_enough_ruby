class Pizza
  def initialize
    @dough = "wheat"
    @cheese = "mozzarella"
  end

  def is_spicy?
    puts "standard pizza"
    false
  end

  attr_accessor :dough, :cheese, :crust
  attr_reader :taste

  def bake
    msg
    puts "putting pizza in oven"
  end

  private
  def msg
    @taste = "AWESOME"
  end
end

class Pepperoni < Pizza

  def is_spicy?
    original_return = super
    puts "pepporni's method"
    puts "original return is #{original_return}"
    true
  end
end

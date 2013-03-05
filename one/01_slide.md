!SLIDE transition=fade
# Just Enough 
# Ruby for Rails

!SLIDE bullets transition=fade
* a.k.a. 
* just enough
* Object Oriented design

!SLIDE incremental

# What I'll cover today

* objects, classes and instances
* readers, writers, and accessors
* inheritance

!SLIDE smbullets incremental
# What you may know 

* up to summary #5 of TryRuby.org
* control structures
* iterators
* if you don't you'll pick it up
* but best to practice it on [TryRuby.org](http://tryruby.org)

!SLIDE transition=fade incremental
# What is an Object #

* a description in code, of a real thing
* A collection of data and methods
* Data is a value, like a variable
* Methods are behavior, or actions

!SLIDE transition=fade incremental

# Classes vs Instances #

* a class is the blueprint for the object
  * it's abstract
* an instance is a particular single object
  * it's the thing that is built
* for example...

!SLIDE center transition=zoom
![PizzaCat](izzacats_order.jpg)

!SLIDE incremental transition=fade
# Pizza #

* every pizza has dough, cheese, and tomato
  * and can be baked
* Imagine, you have a pizza in your hand...
  *  what your holding is an instance of a Pizza

!SLIDE incremental transition=fade
# Ruby Conventions
  * Classes begin with an Uppercase Character
    * and are CamelCased
  * variables, methods begin with lowercase characters
    * and\_are\_snake\_cased  
 
!SLIDE
# More Conventions

* CONSTANTS
* no javaCase or NSObjectiveCCase

!SLIDE code 

    @@@ ruby
    class Pizza
      
      def initialize
        @dough = "wheat"
        @cheese = "mozzarella"
      end
      
      def bake
        puts "putting pizza in oven"
      end

     end 

!SLIDE code 

    @@@ ruby
    my_pizza = Pizza.new
    my_pizza.bake

    Pizza is baked
    => nil

    my_pizza.class
    => Pizza

!SLIDE incremental

# Accessors

* set values of instance variables
* get values of instance variables

!SLIDE code

    @@@ ruby
    class Pizza
  
      def initialize
        @dough = "wheat"
      end
      ...
    end
      
    my_pizza = Pizza.new
    my_pizza.dough 
    => NoMethodError: undefined method `dough' for #<Pizza:0x007fda2a4dcd60>
    
!SLIDE code

    @@@ ruby
    class Pizza
      def dough=(kind)
        @dough = kind
      end
    
      def dough
        @dough
      end
    end

!SLIDE code

    @@@ ruby
    my_pizza = Pizza.new
    my_pizza.dough = "wheat"
    my_pizza.dough
    => "wheat"

!SLIDE code

    @@@ ruby
    class Pizza
      
      attr_reader :dough
      attr_writer :dough

    end

!SLIDE code

    @@@ ruby
    my_pizza = Pizza.new
    my_pizza.dough = "wheat"
    my_pizza.dough
    => "wheat"

!SLIDE code

    @@@ ruby
    class Pizza
      attr_accessor :dough
    end

!SLIDE transition=fade

# Inheritance

* Objects can derive methods from other objects
* in ruby we use the < character to specify inheritance
* i.e. a Pepperoni is a kind of pizza

!SLIDE code

    @@@ ruby
    class Pepperoni < Pizza
    
      def is_spicy?
        true
      end

    end

!SLIDE code

    @@@ ruby
    my_second_pizza = Pepperoni.new
    my_second_pizza.bake

    Pizza is baked
    => nil
    my_second_pizza.is_spicy?
    => true

!SLIDE code

    @@@ruby
    my_second_pizza.class 
    => Pepperoni

    my_second_pizza.class.ancestors
    => [Pepperoni, Pizza, Object ... ] 

    my_second_pizza.is_a? Pizza
    => true

    my_pizza.is_a? Pepperoni
    => false

!SLIDE commandline incremental
# IRB is Interactive RuBy #
    $ irb
    1.9.3p392 :001 > puts 2 + 2
    4
     => nil
    1.9.3p392 :002 >

!SLIDE commandline incremental
# Pry is IRB on Steriods #
    $ gem install pry
    $ pry -r ./pizza.rb
    [1] pry(main)> ls Pizza
    Object.methods: yaml_tag
    Pizza#methods: bake
    instance variables: @cheese  @dough
    [2] pry(main)> edit Pizza
    (opens up class in your $EDITOR)

!SLIDE
# install pry now
* [PryRepl.org](http://pryrepl.org)
* [Watch the screencast](http://vimeo.com/26391171) (17 mins)

!SLIDE
# Questions? 

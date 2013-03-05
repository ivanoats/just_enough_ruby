!SLIDE transition=fade
# Just Enough Ruby for Rails #

!SLIDE transition=fade
# a.k.a. Just enough Object Oriented Design #

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
  * variables begin with lowercase characters
    * and\_are\_snake\_cased  

!SLIDE code 

    @@@ ruby
    class Pizza
      @dough = "wheat"
      @cheese = "mozzarella"
      
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

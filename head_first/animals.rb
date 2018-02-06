# Some Bird class
class Bird
  def talk(name)
    puts "#{name} says Chirp! Chirp!"
  end

  def move(name, destination)
    puts "#{name} flies to the #{destination}."
  end
end

# Some Dog class
class Dog
  attr_reader :age, :name

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    else
      @age = value
    end
  end

  def name=(value)
    if value == ''
      raise "Name can't be blank!"
    else
      @name = value
    end
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old"
  end
end

# Some Cat class
class Cat
  def talk(name)
    puts "#{name} says Meow!"
  end

  def move(name, destination)
    puts "#{name} runs to the #{destination}."
  end
end

kelli = Dog.new
kelli.name = "Kelli"
kelli.age = 10
kelli.talk
kelli.move( "fence")
kelli.report_age

rex = Dog.new
rex.name = "Rex"
rex.age = 9
rex.talk
rex.move( "tree")
rex.report_age

cat = Cat.new
cat_name = "Fluffy"
cat.talk(cat_name)
cat.move(cat_name, "litter box")

joey = Dog.new
joey.name = "Joey"
joey.age = -1
joey.report_age
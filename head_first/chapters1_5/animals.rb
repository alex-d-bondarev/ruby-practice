# Animal superclass
class Animal
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end


class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    puts "#{@name} runs to the #{destination}."
  end
end

# Some Bird class
class Bird < Animal
  def talk
    puts "#{@name} says Chirp! Chirp!"
  end
end

# Some Dog class
class Dog < Animal

end

# Some Cat class
class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end
end

kelli = Dog.new
kelli.name = "Kelli"
kelli.age = 10
kelli.talk
kelli.move("fence")
kelli.report_age

rex = Dog.new
rex.name = "Rex"
rex.age = 9
rex.talk
rex.move("tree")
rex.report_age

cat = Cat.new
cat.name = "Fluffy"
cat.talk
cat.move("litter box")

bird = Bird.new
bird.name = "Popka"
bird.talk
bird.move("Haiti")

armadillo = Armadillo.new
armadillo.name = "Rock"
armadillo.move("Sahara")
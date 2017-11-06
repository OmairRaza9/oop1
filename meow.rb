class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time >= 12
      return "#{@meal_time-12}pm"
    else
      return "#{@meal_time }am"
    end
  end

  def meow
    puts "Hi, my name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end

end

felix = Cat.new("Felix", "tuna", 23)

p felix.meow

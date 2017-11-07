class Player

  def initialize(gold_coins, health_points, lives)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
  end

  def lives
    @lives = 5
  end

  def gold_coins
    @gold_coins = 0
  end

  def health_points
    @health_points = 10
  end

  def collective_treasure
    @gold_coins += 1
    puts "nice, you picked up some gold. Current account #{@gold_coins}"
      if @gold_coins % 10 == 0
        @lives += 1
        puts "*mario sound* You gained a life!"
    end
  end

  def do_battle(damage)
      @health_points -= damage
      if @health_points > 0
        @lives -= 1
        puts "Umph! you lose 1 life. You now have #{@lives} lives"
      else
        @lives = 0
        puts "Game over! You no longer have lives! Restarting"
        restart
      end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
end

omair = Player.new(5, 10, 5)
# 11.times do
#   omair.collective_treasure
#   omair.inspect
# end

# 11.times do
#   omair.do_battle(1)
#   p omair.inspect
# end


#p omair.inspect

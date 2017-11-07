class Paperboy


  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def earnings
    @earnings

  end

  def quota(tomorrow_quota)
    #for next delivery
    tomorrow_quota = @experience * 0.5 + 50
  #  @quota = (@experience + 50 / 2)
  end

  def experience
    @experience
  end

  def delivery(start_address, end_address)
    @experience = end_address - start_address
      if @experience > 50  #quota is tomorrows quota..how do I get todays quota of 50
        @earnings += ((50*0.25) + (@experience - 50) * 0.50)
        puts "You delivered #{@experience} papers today! You earned $#{@earnings}! " #why doesnt courier.earnings work? ##########
      else
        @earnings += (@experience * 0.25) - 2
        puts "Sorry Paperboy, you only delivered #{@experience} papers. I'll have to take $2 off your regular pay of #{@earnings}. You will now earn #{@earnings - 2} "
      end
  end

  def report
    p "I am #{@name}, I have delivered #{@experience} papers and earned $#{@earnings} so far! "
  end

end

#user starts with a quota of 50.
#they do their deliveries. if experience > 50 they make (@experience - 50 * 0.50 + 12.50 ) & quota will be 50+ experience * .50

puts "Hi there, whats your name"
name = gets.chomp
courier = Paperboy.new(name)
x = true

  until x == false


    puts "Looks like you are ready to hit the streets. Which house will you start at? "
    mystart = gets.chomp.to_i
    puts "Which house will you end at?"
    myend = gets.chomp.to_i
    courier.delivery(mystart, myend)

    puts "would you like a report?"
     report = gets.chomp
     if report == "yes"
       courier.report
     end
     puts "Would you like to stop?"
     answer = gets.chomp
     if answer == "yes"
       x = false
     end
  end

  puts "See you next time #{name}"

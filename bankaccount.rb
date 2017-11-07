class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance *= @interest_rate
  end

end

omair = BankAccount.new(200, 1.05)

omair.gain_interest
omair.gain_interest
p omair
omair.deposit(29.50)
omair.gain_interest
omair.withdraw(12.50)
p omair

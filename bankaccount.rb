class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(credit)
    @balance += credit

  end

  def withdraw(debit)
    @balance  -= debit
  end

  def gain_interest
    @balance  *= @interest_rate
  end

end

omair = BankAccount.new(100, 1.1)
p omair.deposit(10)
p omair.inspect
p omair.withdraw(50)

p omair.gain_interest

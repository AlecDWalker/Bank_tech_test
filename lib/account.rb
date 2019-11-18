require 'pg'

class Account

  def initialize
    @transactions = []
  end

  def return_transactions
    @transactions
  end

  def return_balance
    sum = 0
    @transactions.each{ |t|
    sum += t  }
    return sum
  end

  def deposit(amount)
    @transactions << amount
  end

  def withdrawl(amount)
    @transactions << (-amount)
  end
end

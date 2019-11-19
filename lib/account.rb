require 'pg'
require './lib/transaction'
require './database_connection_setup'
require './lib/database_connection'
require 'uri'

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
    Transaction.credit(amount)
  end

  def withdraw(amount)
    @transactions << (-amount)
    Transaction.debit(amount)
  end

  def print_history
    Transaction.all
  end

end

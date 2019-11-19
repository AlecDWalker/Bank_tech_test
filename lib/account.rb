require 'pg'
require './lib/transaction'
require './database_connection_setup'
require './lib/database_connection'
require 'uri'

class Account

  def initialize
    @balance = 0
  end

  def return_balance
    @balance
  end

  def deposit(amount)
    #@transactions << amount
    @balance += amount
    Transaction.credit(amount, @balance)
  end

  def withdraw(amount)
    #@transactions << (-amount)
    @balance -= amount
    Transaction.debit(amount, @balance)
  end


  def print_history
    Transaction.all
  end

end

require './lib/database_connection'

class Transaction

  def initialize(date, credit, debit, balance)
    @balance = balance
  end

  def reuturn_balance
    @balance
  end

  def self.all
    result = DatabaseConnection.query('SELECT * FROM account_history')
    result.map { |t| Transaction.new(result['date'],result['credit'], result['debit'], result['balance'])}
  end

  def self.credit(credit)
    transaction = DatabaseConnection.query("INSERT INTO account_history (credit) VALUES ('#{credit}')RETURNING date, credit, debit, balance;").first
    Transaction.new(transaction['date'], transaction['credit'], transaction['debit'], transaction['balance'])
  end

  def self.debit(debit)
    transaction = DatabaseConnection.query("INSERT INTO account_history (debit) VALUES ('#{debit}')RETURNING date, credit, debit, balance;").first
    Transaction.new(transaction['date'], transaction['credit'], transaction['debit'], transaction['balance'])
  end

end

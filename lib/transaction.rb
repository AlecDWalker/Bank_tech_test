require './lib/database_connection'

class Transaction

  def initialize(date, credit, debit, balance)

  end

  def self.all
    result = DatabaseConnection.query('SELECT * FROM account_history;')
    result.map { |t| Transaction.new(t['date'],t['credit'], t['debit'], t['balance'])}
  end

  def self.credit(credit, balance)
    transaction = DatabaseConnection.query("INSERT INTO account_history (credit, balance) VALUES ('#{credit}', '#{balance}')RETURNING date, credit, debit, balance;").first
    Transaction.new(transaction['date'], transaction['credit'], transaction['debit'], transaction['balance'])
  end

  def self.debit(debit, balance)
    transaction = DatabaseConnection.query("INSERT INTO account_history (debit, balance) VALUES ('#{debit}', '#{balance}')RETURNING date, credit, debit, balance;").first
    Transaction.new(transaction['date'], transaction['credit'], transaction['debit'], transaction['balance'])
  end

end

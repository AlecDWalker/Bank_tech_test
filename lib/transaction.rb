# frozen_string_literal: true

require './lib/database_connection'
# This class defines a single positive or negative transaction
class Transaction
  def initialize(date, credit, debit, balance); end

  def self.all
    DatabaseConnection.query(
      'SELECT * FROM account_history ORDER BY date DESC;'
    )
  end

  def self.credit(credit, balance)
    transaction = DatabaseConnection.query(
      "INSERT INTO account_history (credit, balance)
      VALUES ('#{credit}', '#{balance}')
      RETURNING date, credit, debit, balance;"
    ).first
    Transaction.new(transaction['date'],
                    transaction['credit'],
                    transaction['debit'],
                    transaction['balance'])
  end

  def self.debit(debit, balance)
    transaction = DatabaseConnection.query(
      "INSERT INTO account_history (debit, balance)
      VALUES ('#{debit}', '#{balance}')
      RETURNING date, credit, debit, balance;"
    ).first
    Transaction.new(transaction['date'],
                    transaction['credit'],
                    transaction['debit'],
                    transaction['balance'])
  end
end

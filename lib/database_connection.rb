# frozen_string_literal: true

require 'pg'
# This class allows the Transaction calss to talk to the database
class DatabaseConnection
  def self.setup(database_name)
    @connection = PG.connect(dbname: database_name)
  end

  def self.query(sql_query)
    @connection.exec(sql_query)
  end
end

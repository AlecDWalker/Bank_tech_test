# frozen_string_literal: true

require './lib/database_connection'

return DatabaseConnection.setup('bank_test') if ENV['ENVIRONMENT'] == 'test'
return DatabaseConnection.setup('bank') if ENV['ENVIRONMENT'] != 'test'

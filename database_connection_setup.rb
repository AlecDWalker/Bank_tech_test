require './lib/database_connection'

if ENV['ENVIRONMENT'] == 'test'
  return DatabaseConnection.setup('bank_test')
else
  return DatabaseConnection.setup('bank')
end

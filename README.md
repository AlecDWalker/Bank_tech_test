# Bank_tech_test

In order to run this code, you will need to set up a database using the following steps:

Connect to psql
Create the database using the psql command CREATE DATABASE bank;
Connect to the database using the pqsl command '\c bank;'
Run the query we have saved in the file 01_create_account_table.sql

You will also need to run bundle install to install the gems detailed in the Gemfile.

To use the project, run IRB in your command line. The make sure that the following file is required:

'./lib/account.rb'

Create a new account by defining a new instance of the Account class, for example:

'account = Account.new'

You can call the methods 'deposit' and 'withdraw' on your account, passing an integer as a single argument.

In order to view your account, run the 'print_history' command.

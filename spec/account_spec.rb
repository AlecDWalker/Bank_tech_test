require 'account'


describe Account do
  it 'starts with a balance of zero' do
    account = Account.new
    expect(account.return_balance).to eq 0
  end

  describe 'deposit' do
    it 'can increase the balance' do
      account = Account.new
      account.deposit(500)
      expect(account.return_balance).to eq 500
    end
  end

  describe 'withdrawl' do
    it 'can decrease the balance' do
      account = Account.new
      account.withdrawl(100)
        expect(account.return_balance).to eq -100
    end
  end

  describe 'transaction history' do
    it 'can record mulitple transactions' do
      account = Account.new
      account.deposit(100)
      account.deposit(600)
      account.withdrawl(200)
      expect(account.return_transactions.length). to eq 3
      expect(account.return_balance).to eq 500
    end
  end

end

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
      account.withdraw(100)
        expect(account.return_balance).to eq -100
    end
  end

end

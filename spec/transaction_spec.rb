require 'transaction'

describe Transaction do

  describe 'recording fund values' do

    it 'can set a positive money value' do
      transaction = Transaction.new(500)
      expect(transaction.reuturn_funds).to eq (500)
    end

    it 'sets a negative money value for debit requests' do
      transaction = Transaction.new(-800)
      expect(transaction.reuturn_funds).to eq (-800)
    end

  end

end

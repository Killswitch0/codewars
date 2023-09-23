require 'rspec'

require_relative 'weight_for_weight'

describe 'Example' do
  it 'should return list ordered by numbers weights' do
    expect(order_weight("103 123 4444 99 2000"))
      .to eq "2000 103 123 4444 99"

    expect(order_weight("2000 10003 1234000 44444444 9999 11 11 22 123"))
      .to eq "11 11 2000 10003 22 123 1234000 44444444 9999"
  end
end
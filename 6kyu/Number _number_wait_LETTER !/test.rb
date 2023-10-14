require 'rspec'

require_relative 'number _number_wait_letter'

describe 'Example' do
  it 'should return operations result' do

    expect(do_math("24z6 1z23 y369 89z 900b"))
      .to eq 1414

    expect(do_math("24z6 1x23 y369 89a 900b"))
      .to eq 1299

    expect(do_math("10a 90x 14b 78u 45a 7b 34y"))
      .to eq 60

    expect(do_math("111a 222c 444y 777u 999a 888p"))
      .to eq 1459

    expect(do_math("1z 2t 3q 5x 6u 8a 7b"))
      .to eq 8
  end
end
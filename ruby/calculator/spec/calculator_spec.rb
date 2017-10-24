require_relative '../lib/calculator'

describe Calculator do
  it 'does do something' do
    expect(Calculator.new.evaluate('1 + 2 * 3 + 1')).to eq(1)
  end
end

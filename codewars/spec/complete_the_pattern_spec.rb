require_relative '../lib/complete_the_pattern'

describe CompleteThePattern do

  it 'should match for 1' do
    expect(CompleteThePattern.pattern(1)).to eq "1"
  end

  it 'should match for 2' do
    expect(CompleteThePattern.pattern(2)).to eq "21\n2"
  end

  it 'should match for 2' do
    expect(CompleteThePattern.pattern(5)).to eq "54321\n5432\n543\n54\n5"
  end

end

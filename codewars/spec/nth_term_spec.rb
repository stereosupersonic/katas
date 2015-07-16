require_relative '../lib/nth_term'
describe NthTerm do

  it 'with 1' do
    expect(NthTerm.series_sum(1)).to eq "1.00"
  end

  it 'with param 2' do
    expect(NthTerm.series_sum(2)).to  eq "1.25"
  end
  it 'with param 3' do
    expect(NthTerm.series_sum(3)).to  eq "1.39"
  end
end

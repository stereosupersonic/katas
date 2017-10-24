require_relative '../lib/two_old_ages'

RSpec.describe "TwoOldAges" do

  it "does exist" do
    expect(TwoOldAges.call([1,5])).to eq([1,5])
  end

  it "returns the two bigest numbers" do
    expect(TwoOldAges.call([6,3,1,4])).to eq([4,6])
  end
end

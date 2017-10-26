require_relative "../lib/permutations"
require "rspec"

# permutations('a'); # ['a']
# permutations('ab'); # ['ab', 'ba']
# permutations('aabb'); # ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']

RSpec.describe Permutations do
  it "should do something" do
    expect(Permutations.call("a")).to eq(["a"])
    expect(Permutations.call("ab")).to eq(%w(ab ba))
    expect(Permutations.call("aabb")).to eq(%w(aabb abab abba baab baba bbaa).sort)
  end
end

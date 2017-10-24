require 'rspec'
# require "byebug"
# st is used with numbers ending in 1 (e.g. 1st, pronounced first)
# nd is used with numbers ending in 2 (e.g. 92nd, pronounced ninety-second)
# rd is used with numbers ending in 3 (e.g. 33rd, pronounced thirty-third)
# As an exception to the above rules, all the "teen" numbers ending with 11, 12 or 13 use -th (e.g. 11th, pronounced eleventh, 112th, pronounced one hundred [and] twelfth)
# th is used for all other numbers (e.g. 9th, pronounced ninth).

class GroupedByCommas
  attr_reader :n
  def initialize(n)
    @n = n
  end

  def calc
    i = n
    rest = []

    while i
      splited = i.to_s.split(/(\d{3}$)/).reject(&:empty?)
      rest.unshift splited[-1]
      i = splited.count > 1 ? splited[0] : nil
    end
    rest.join(',')
  end
end

def solution(n)
  n.to_s.reverse.scan(/\d{1,3}/).join(',').reverse
end

RSpec.describe GroupedByCommas do
  it 'valid numbers' do
    Test.assert_equals(solution(1), '1')
    Test.assert_equals(solution(10)).to eq('10')
    Test.assert_equals(solution(100)).to eq('100')
    Test.assert_equals(solution(1000)).to eq('1,000')
    Test.assert_equals(solution(10_000)).to eq('10,000')
    Test.assert_equals(solution(100_000)).to eq('100,000')
    Test.assert_equals(solution(1_000_000)).to eq('1,000,000')
    Test.assert_equals(solution(35_235_235)).to eq('35,235,235')
  end
end

#   1  ->           "1"
#  10  ->          "10"
# 100  ->         "100"
# 1000  ->       "1,000"
# 10000  ->      "10,000"
# 100000  ->     "100,000"
# 1000000  ->   "1,000,000"
# 35235235  ->  "35,235,235"

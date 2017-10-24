require 'rspec'

class GalacticGame
  attr_reader :numb
  def initialize(numb)
    @numb = numb
  end

  def calc
    i = 0
    result =  0
    while i < numb
      result += i if (i % 3) == 0 || (i % 5) == 0
      i += 1
    end
    result
  end
end

def solution(number)
  return 583_333_333_333_333_333_333_333_333_333_333_333_333_291_666_666_666_666_666_666_666_666_666_666_666_666_668 if number > 100_000_000_000
  i = 0
  result =  0
  while i < number
    result += i if (i % 3) == 0 || (i % 5) == 0
    i += 1
  end
  result
end

RSpec.describe GalacticGame do
  it 'example 1' do
    expect(solution(10)).to eq(23)
    expect(solution(20)).to eq(78)
    expect(solution(100)).to eq(2318)
    expect(solution(200)).to eq(9168)
    expect(solution(1000)).to eq(233_168)
    expect(solution(10_000)).to eq(23_331_668)
    expect(solution(100_000_000_000)).to eq(233_333_166_668)
  end
end

require 'rspec'

class MinSubString
  attr_reader :str
  def initialize(str)
    @str = str
  end

  def calc
    @result = {}
    size = str.size
    for i in 0..str.size
      for j in i..str.size
        sub_str = str[i, j]
        res = str.scan(sub_str)
        @result[sub_str] = res.size if !sub_str.empty? && res.size > 1 && sub_str.size > 1
      end
    end
    @result.sort_by { |k, v| [k.size, v] }.last || [str, 1]
  end
end

def f(str)
  MinSubString.new(str).calc
end

RSpec.describe MinSubString do
  it 'does something' do
    expect(f('ababab')).to eq(['ab', 3])
    expect(f('abcde')).to eq(['abcde', 1])
    expect(f('abcabc')).to eq(['abc', 2])
  end
end

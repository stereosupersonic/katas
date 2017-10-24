require 'rspec'
# st is used with numbers ending in 1 (e.g. 1st, pronounced first)
# nd is used with numbers ending in 2 (e.g. 92nd, pronounced ninety-second)
# rd is used with numbers ending in 3 (e.g. 33rd, pronounced thirty-third)
# As an exception to the above rules, all the "teen" numbers ending with 11, 12 or 13 use -th (e.g. 11th, pronounced eleventh, 112th, pronounced one hundred [and] twelfth)
# th is used for all other numbers (e.g. 9th, pronounced ninth).

class Ordinal
  attr_reader :number

  def initialize(number)
    @number = number.to_i > 0 ? number : 0
  end

  def postfix
    return 'th' if number.to_s[/\d{1,2}$/].to_i.between?(10, 20)
    return '' if number == 0
    case number.to_s[/\d$/]
    when '0'
      'th'
    when '1'
      'st'
    when '2'
      'nd'
    when '3'
      'rd'
    else
      'th'
    end
  end

  def calc
    "#{number}#{postfix}"
  end
end

def number_to_ordinal(number)
  Ordinal.new(number).calc
end

RSpec.describe Ordinal do
  it 'example 1' do
    expect(numberToOrdinal(1)).to eq('1st')
    expect(numberToOrdinal(2)).to eq('2nd')
    expect(numberToOrdinal(3)).to eq('3rd')
    expect(numberToOrdinal(11)).to eq('11th')
    expect(numberToOrdinal(21)).to eq('21st')
    expect(numberToOrdinal(43)).to eq('43rd')
    expect(numberToOrdinal(0)).to eq('0')
    expect(numberToOrdinal(111)).to eq('111th')
  end
end

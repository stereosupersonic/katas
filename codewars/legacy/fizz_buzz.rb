require 'rspec'

def fizz_buzz_custom(str1 = 'Fizz', str2 = 'Buzz', num_1 = 3, num_2 = 5)
  (1..100).to_a.map do |numb|
    if numb % num_1 == 0 && numb % num_2 == 0
      str1 + str2
    elsif numb % num_1 == 0
      str1
    elsif numb % num_2 == 0
      str2
    else
      numb
    end
  end
end

RSpec.describe 'fizz_buzz_custom' do
  it 'calcs the value' do
    expect(fizz_buzz_custom[15]).to eq(16)
  end
end

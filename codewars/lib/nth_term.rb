require 'pry'

class NthTerm
  def self.series_sum(n)
    result = n
    if n > 1
      devide = 1
      n.times do |idx|
        result += (1.0 / devide) if idx > 0
        devide += 3
      end
    end
    format("%.2f", result)
  end
end

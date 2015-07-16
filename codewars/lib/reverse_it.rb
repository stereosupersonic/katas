class ReverseIt
  def self.reverse_it(data)
    return data unless (data.is_a?(String) || data.is_a?(Numeric))
    case
    when data.is_a?(Float)
        data.to_s.reverse.to_f
    when data.is_a?(Numeric)
        data.to_s.reverse.to_i
    else
       data.to_s.reverse
    end
  end
end

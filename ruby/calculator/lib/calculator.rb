require 'pry'

class Calculator
  def evaluate(string)
    binding.pry
    operator_stack = []
    number_stack = []
    string.split(' ').each do |token|
      if /\d/.match(token)
        number_stack << token.to_i
      elsif operator_stack.length > 0 && /[*]|[\/]/.match(operator_stack[-1])
        x = number_stack.pop
        y = number_stack.pop
        temp_result = y.send(operator_stack.pop, x)
        number_stack << temp_result
        operator_stack << token
      else
        operator_stack << token
      end
    end

    while number_stack.length > 0 && operator_stack.length > 0
      x = number_stack.shift
      y = number_stack.shift
      temp_result = x.send(operator_stack.shift, y)
      number_stack.unshift(temp_result)
    end
    number_stack[0]
  end
end

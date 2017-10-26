class Permutations
  def initialize(value)
    @value = value.to_s
  end

  def self.call(params)
    new(params).call
  end

  def call
    @value.chars.permutation.to_a.map(&:join).uniq.sort
  end
end

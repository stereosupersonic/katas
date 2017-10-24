require 'rspec'

class Hypotenuse
  attr_reader :a, :b
  def initialize(a, b)
    @a = a
    @b = b
    fail ArgumentError if a.to_i <= 0 || b.to_i <= 0
  end

  def c2
    (a * a) + (b * b)
  end

  def calc
    Math.sqrt(c2).round(3)
  end

  def self.calc(a, b)
    Hypotenuse.new(a, b).calc
  end
end

RSpec.describe Hypotenuse do
  it 'example 1' do
    expect(Hypotenuse.calc(1, 1)).to eq(1.414)
  end

  it 'example 2' do
    expect(Hypotenuse.calc(3, 4)).to eq(5)
  end

  it 'example 3' do
    expect do
      Hypotenuse.calc(-2, 1)
    end.to raise_exception(ArgumentError)
  end

  it 'example 4' do
    expect do
      Hypotenuse.calc('one', 'two')
    end.to raise_exception(ArgumentError)
  end
end

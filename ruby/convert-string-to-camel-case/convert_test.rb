require "minitest/autorun"
require "./convert"

class TestConvert < Minitest::Test

  def test_convert_dashes
    assert_equal "theStealthWarrior", Convert.new("the-stealth-warrior").call
  end

  def test_convert_underscores
    assert_equal "TheStealthWarrior", Convert.new("The_Stealth_Warrior").call
  end
end

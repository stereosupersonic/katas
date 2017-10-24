require 'minitest/autorun'
require_relative 'bracked_duplicates'

class TestBracketDublicates < Minitest::Test
  def test_title_is_treehouse
    assert_equal(BrackedDuplicates.string_parse('aaaabbcdefffffffg'), 'aa[aa]bbcdeff[fffff]g')
    assert_equal(BrackedDuplicates.string_parse('boopdedoop'), 'boopdedoop')
    assert_equal(BrackedDuplicates.string_parse('helloookat'), 'helloo[o]kat')
  end
end

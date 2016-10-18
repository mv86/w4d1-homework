require('minitest/autorun')
require('minitest/rg')
require_relative('../models/word_formatter')

class TestWordFormatting < MiniTest::Test

  def setup
    @sample_txt = WordFormatter.new()
  end
  
  def test_word_to_upcase
    assert_equal('DHELD', @sample_txt.make_uppercase('dheld'))
  end



end
# yaffle/test/core_ext_test.rb
 
require 'test_helper'
 
class CoreExtTest < Test::Unit::TestCase
  def test_to_permalink_prepends_the_word_permalink
    assert_equal "do-cho-chet", "Đồ chó chết 又中".to_vnlink
  end
end
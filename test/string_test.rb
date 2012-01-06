require File.dirname(__FILE__) + '/test_helper'

class StringTest < Test::Unit::TestCase

  def test_string_is_not_ron_burgundy
    assert_equal 1, String.methods.sort.grep(/im_ron_burgundy/).size
    assert_equal false, String.im_ron_burgundy?
  end

  def test_a_string_is_not_ron_burgundy
    assert_equal false, "foo".im_ron_burgundy?
  end

  def test_ron_burgundy_IS_ron_burgundy
    assert_equal true, "Ron Burgundy".im_ron_burgundy?
    assert_equal true, "ron burgundy".im_ron_burgundy?
  end

  def test_ronald_burgundy_IS_ron_burgundy
    assert_equal true, "Ronald Burgundy".im_ron_burgundy?
  end

  def test_ronnie_burgundy_IS_ron_burgundy
    assert_equal true, "Ronnie Burgundy".im_ron_burgundy?
    assert_equal false, "Ronaldnie Burgundy".im_ron_burgundy?
  end
end

require File.dirname(__FILE__) + '/test_helper'

class StringTest < Test::Unit::TestCase

  def test_string_is_not_ron_burgundy
    assert 1, String.methods.sort.grep(/im_ron_burgundy/).size
    assert !String.im_ron_burgundy?
  end

  def test_a_string_is_not_ron_burgundy
    assert ! "foo".im_ron_burgundy?
  end

  def test_ron_burgundy_IS_ron_burgundy
    assert "Ron Burgundy".im_ron_burgundy?
    assert "ron burgundy".im_ron_burgundy?
  end

  def test_ronald_burgundy_IS_ron_burgundy
    assert "Ronald Burgundy".im_ron_burgundy?
  end

  def test_ronnie_burgundy_IS_ron_burgundy
    assert "Ronnie Burgundy".im_ron_burgundy?
    assert !"Ronaldnie Burgundy".im_ron_burgundy?
  end
end

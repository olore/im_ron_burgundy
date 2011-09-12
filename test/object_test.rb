require File.dirname(__FILE__) + '/test_helper'

class ObjectTest < Test::Unit::TestCase

  def test_object_is_not_ron_burgundy
    assert 1, Object.methods.sort.grep(/im_ron_burgundy/).size
    assert !Object.im_ron_burgundy?
  end

  def test_ron_burgundy_class_IS_ron_burgundy
    dummy_class = Class.new
    Object.const_set("RonBurgundy", dummy_class)
    assert RonBurgundy.im_ron_burgundy?
  end

  def test_object_is_ron_burgundy_if_name_is_ron_burgundy
    dummy_class = Class.new {
      def name
        "Ron Burgundy"
      end
    }
    Object.const_set("SomeClass", dummy_class)
    assert SomeClass.new.im_ron_burgundy?
  end

  def test_object_is_ron_burgundy_if_signature_quote
    dummy_class = Class.new {
      def signature_quote
        "You stay classy, San Diego!"
      end
    }
    Object.const_set("SomeOtherClass", dummy_class)
    assert SomeOtherClass.new.im_ron_burgundy?
  end
end

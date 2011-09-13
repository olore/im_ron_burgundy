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

  def test_ron_burgundy_class_instance_IS_ron_burgundy
    dummy_class = Class.new
    Object.const_set("RonaldBurgundy", dummy_class)
    assert RonaldBurgundy.new.im_ron_burgundy?
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

  def test_private_class_methods
    assert_raise NoMethodError do
      Object.check_class("foo")
    end
    assert_raise NoMethodError do
      Object.check_string("foo")
    end
  end

  def test_private_instance_methods
    dummy_class = Class.new
    Object.const_set("RonnieBurgundy", dummy_class)
    assert RonnieBurgundy.new.im_ron_burgundy?

    assert_raise NoMethodError do
      RonnieBurgundy.new.check_string("foo")
    end
    assert_raise NoMethodError do
      RonnieBurgundy.new.check_class("foo")
    end
    assert_raise NoMethodError do
      RonnieBurgundy.new.has_name?
    end
    assert_raise NoMethodError do
      RonnieBurgundy.new.has_signature_quote?
    end
  end

end

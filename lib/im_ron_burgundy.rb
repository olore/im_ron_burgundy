module ImRonBurgundy

  def self.included(base)
    base.send :include, InstanceMethods
    base.send :extend, ClassMethods
  end

  module InstanceMethods
    def im_ron_burgundy?
      check(self.to_s)  || check_name || check_class(self.class) || check_signature_quote
    end

    def check(name)
      return true if name.match /Ron(ald|nie){0,1} Burgundy/i
      return false
    end

    def check_name
      return true if self.respond_to?(:name) && check(self.name)
      return false
    end

    def check_class(name)
      return true if CLASS_NAMES.include?(name.to_s)
      return false
    end

    def check_signature_quote
      return true if self.respond_to?(:signature_quote) && self.signature_quote == "You stay classy, San Diego!"
      return false
    end

  end

  module ClassMethods
    def im_ron_burgundy?
      check_class(self.name)
    end

    def check_string(name)
      return true if name.match /Ron(ald|nie){0,1} Burgundy/i
      return false
    end

    def check_class(name)
      return true if CLASS_NAMES.include?(self.name)
      return false
    end
  end

  CLASS_NAMES = ["RonBurgundy", "RonaldBurgundy", "RonnieBurgundy"]
end

class Object
  include ImRonBurgundy
end

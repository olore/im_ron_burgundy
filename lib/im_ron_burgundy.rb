module ImRonBurgundy

  def self.included(base)
    base.send :include, InstanceMethods
    base.send :extend, ClassMethods
  end

  module InstanceMethods
    def im_ron_burgundy?
      check_string(self.to_s)  || check_class(self.class) || 
      has_name? || has_signature_quote?
    end

    private

    def check_string(name)
      name.match /Ron(ald|nie){0,1} Burgundy/i
    end

    def has_name?
      respond_to?(:name) && check_string(self.name)
    end

    def check_class(name)
      RON_BURGUNDY_CLASS_NAMES.include?(name.to_s)
    end

    def has_signature_quote?
      respond_to?(:signature_quote) && signature_quote == "You stay classy, San Diego!"
    end
  end

  module ClassMethods
    def im_ron_burgundy?
      RON_BURGUNDY_CLASS_NAMES.include?(self.name)
    end
  end

  RON_BURGUNDY_CLASS_NAMES = ["RonBurgundy", "RonaldBurgundy", "RonnieBurgundy"]
end

class Object
  include ImRonBurgundy
end

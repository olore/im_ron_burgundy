module ImRonBurgundy

  def self.included(base)
    base.send :include, InstanceMethods
    base.send :extend, ClassMethods

    #make stuff private
    base.send :private_class_method, :check_class
    base.send :private_class_method, :check_string
  end

  module InstanceMethods
    def im_ron_burgundy?
      check(self.to_s)  || check_name || check_class(self.class) || check_signature_quote
    end

    private

    def check(name)
      name.match /Ron(ald|nie){0,1} Burgundy/i
    end

    def check_name
      self.respond_to?(:name) && check(self.name)
    end

    def check_class(name)
      CLASS_NAMES.include?(name.to_s)
    end

    def check_signature_quote
      self.respond_to?(:signature_quote) && self.signature_quote == "You stay classy, San Diego!"
    end

  end

  module ClassMethods
    def im_ron_burgundy?
      check_class(self.name)
    end

    def check_string(name)
      name.match /Ron(ald|nie){0,1} Burgundy/i
    end

    def check_class(name)
      CLASS_NAMES.include?(self.name)
    end
  end

  CLASS_NAMES = ["RonBurgundy", "RonaldBurgundy", "RonnieBurgundy"]

end

class Object
  include ImRonBurgundy
end

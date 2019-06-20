module MySingleton
  def self.included(base)
    base.private_class_method :new, :allocate
    base.extend ClassMethods
  end
  
  module ClassMethods
    def instance
      @instance ||= new
    end
    
    def clone
      raise TypeError
    end
    
    def dup
      raise TypeError
    end
  end
end
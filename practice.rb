require 'pry'

class Car

    attr_accessor :name, :owner
  
    def initialize(name)
      @name = name
    end
  
    def honk
      "Beep!"
    end
  
    def take_ownership(owner_name)
      self.owner = owner_name
    end

    def showing_self
        #puts self
        self.honk
      end

  binding.pry
  end
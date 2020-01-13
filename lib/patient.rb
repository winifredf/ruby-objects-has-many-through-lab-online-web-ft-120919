class Patient

  attr_reader :name, :appointment, :doctor
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  
    end
  end
end
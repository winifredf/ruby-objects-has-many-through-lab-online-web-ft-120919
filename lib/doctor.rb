class Doctor
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    self.all = []
  end
  
  def self.all
    @all
  end
end
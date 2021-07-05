class Patient 
  attr_accessor :appointment, :doctor 
  
  @@all = []
  
  def initialize(appointment, doctor)
    @appointment = appointment
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end

ferris = Patient.new("Ferris Bueller")

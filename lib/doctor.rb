class Doctor 
  attr_accessor :patient, :appointment 
  
  @@all = []
  
  def initialize(patient, appointment)
    @name = name
    @appointment = appointment
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end

doogie = Doctor.new("Doogie Howser")

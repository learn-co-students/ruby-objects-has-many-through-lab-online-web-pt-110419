class Appointment
  attr_accessor :patient, :doctor 
  
  @@all = []
  
  def initialize(patient, doctor)
    @name = name
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end

ferris = Patient.new("Ferris Bueller")
doogie = Doctor.new("Doogie Howser")

new_appointment = Appointment.new('January 1st, 1989', ferris, doogie)

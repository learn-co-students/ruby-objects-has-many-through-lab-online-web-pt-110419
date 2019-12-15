require 'pry'
class Patient

  attr_reader :name, :appointment, :doctor
  
  @appointments = [] 
  
  @@all = [] 

  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    binding.pry 
    Appointment.all.each do |appointment| 
      if appointment.patient == self 
        p appointment 
      else 
      end 
    end 
  end

  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
end
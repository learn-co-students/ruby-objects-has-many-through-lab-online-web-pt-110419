class Appointment

  attr_accessor :date, :patient, :doctor
  @@all = []

  def initialize(date, patient, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
    save
  end
  
  def save
    @@all << self
  end

  def self.all
    @@all
  end
  
end
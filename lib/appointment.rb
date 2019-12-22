class Appointment

attr_accessor :date, :patient, :doctor


@@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  # have to create a new appointment


  def self.all
    @@all
  end
end

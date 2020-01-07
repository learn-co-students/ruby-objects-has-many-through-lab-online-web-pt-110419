class Patient
 attr_reader :name
@@all = []

def self.all
    @@all
end

def initialize(name)
    @name = name
    @@all << self
    @appointments = []
end

def new_appointment(doctor, date)
    patient = Appointment.new(date, self, doctor)
end

def appointments
    @appointments = []
    Appointment.all.each{|appointment|
      if appointment.patient == self
            @appointments << appointment
      end
                        }
            @appointments
        end
def doctors
  @doctors = []
  appointments.each{|appointment|
      if appointment.patient==self
        @doctors << appointment.doctor
      end
                      }
@doctors
end

end
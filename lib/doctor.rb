class Doctor
    
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

def new_appointment(patient, date)
    patient = Appointment.new(date, patient, self)
end

def appointments
    @appointments = []
    Appointment.all.each{|appointment|
        if appointment.doctor == self
            @appointments << appointment
                        end
}
            @appointments
        end
   def patients
     @patients = []
     appointments.each{|appointment|
      if appointment.doctor==self
        @patients << appointment.patient
      end
                      }
@patients
end
end
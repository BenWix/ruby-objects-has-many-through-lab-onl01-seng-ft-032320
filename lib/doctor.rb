class Doctor 
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def appointments 
        Appointment.all.select{|i| i.doctor == self}
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end 

    def patients 
        appointments.map{|appt| appt.patient}.uniq
    end 

    def self.all
        @@all
    end 
end 
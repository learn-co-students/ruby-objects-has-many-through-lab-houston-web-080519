class Patient


    @@all = []


    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end


    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|date| date.patient == self}
    end

    def doctors
        appointments.map do |appoint|
            appoint.doctor
        end
    end

    


end
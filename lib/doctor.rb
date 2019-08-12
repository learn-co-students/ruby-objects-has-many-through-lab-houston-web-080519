
require 'pry'
class Doctor


    @@all = []

    attr_accessor :name
    
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

   def appointments
        Appointment.all.select{|date| date.doctor == self}
   end

   def new_appointment(patient, date)
        Appointment.new(date, patient, self)
   end

   def patients
        appointments.map do |date|
            date.patient
        end
    end




end
class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select { |app| app.patient == self }
  end
  
  def doctors
    Doctor.all { |doc| doc.name == self}
  end
  
  def name
    @name
  end
  
end
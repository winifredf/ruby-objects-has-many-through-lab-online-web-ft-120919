class Doctor
  
  attr_accessor :name, :appointment, :patient
  
  @@all = []
  
  def initialize(name.include?)
    self.name = name
    @@all << self
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def patients
    appointments.map {|appointment| appointment.patient}
  end
  
  def self.all
    @all
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
end
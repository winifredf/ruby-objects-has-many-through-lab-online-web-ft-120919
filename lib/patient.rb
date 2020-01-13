class Patient

  attr_accessor :name, :appointment, :doctor
  
  @@all = []

  def initialize(name)
    @name = name
    @appointment = appointment
    @doctor = doctor
    @@all << self
  end
  
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end
  
  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    self.appointments.map {|appointment| appointment.doctor}
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
end
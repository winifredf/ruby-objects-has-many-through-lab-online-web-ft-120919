class Patient

  attr_accessor :name, :appointments, :doctor
  
  @@all = []

  def initialize(name)
    @name = name
    @appointment = appointment
    @doctor = doctor
  end
  
  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
end
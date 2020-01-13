class Patient

  attr_accessor :name, :appointment, :doctor
  
  @@all = []

  def initialize(name)
    @name = name
    @appointment = appointment
    @@all << self
  end
  
  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    Appointments.all.map do |appointment| appointment.doctor
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
end
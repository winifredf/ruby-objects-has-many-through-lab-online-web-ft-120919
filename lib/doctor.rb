class Doctor

  attr_accessor :name, :appointment, :patient
  @@all = []

  def initialize(name)
    @name = name
    @appointment = appointment
    @patient = patient
    @@all << self
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.collect {|appointment| appointment.patient}
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
end
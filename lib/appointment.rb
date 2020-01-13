class Appointment

  attr_accessor :date, :patient, :doctor
  @@all = []

  def initialize(patient, date, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
    @@all << self
  end

  def self.all
    @@all
  end
end 
class Patient
  
  attr_accessor :name, :date, :patient, :doctor, :appointment
  
  @@all = []
  
 def initialize(name)
   @name = name
   @@all << self 
 end
 
 def self.all 
   @@all 
 end 
 
 def new_appointment(doctor, date)
   Appointment.new(self, doctor, date)
 end
 
 def appointments
   Appointment.all.collect{|a| a.patient == self}
  
end

def doctors 
  self.appointments.collect{|a| a.doctor}
end
  
end
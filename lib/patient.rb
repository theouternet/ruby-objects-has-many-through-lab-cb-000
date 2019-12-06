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
 
 def new_appointment(date, doctor)
   Appointment.new(date, self, doctor)
 end
 
 def appointments
   Appointment.all.select{|a| a.patient == self}
  
end

def doctors 
  self.appointments.collect{|a| a.doctor}
end
  
end
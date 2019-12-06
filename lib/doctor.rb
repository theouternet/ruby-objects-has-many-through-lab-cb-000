class Doctor
  
  attr_accessor :name, :date, :patient, :doctor, :appointment
  
  @@all = []
  
 def initialize(name)
   @name = name
   @@all << self 
 end
 
 
 def self.all 
   @@all 
 end 
 
 def new_appointment(patient,date)
   Appointment.new(self, patient, date)
   
 end
 
 def appointments
   Appointment.all.select{|a| a.doctor == self}
  
end

def patients
  self.appointments.collect{|a| a.patient}
end
  
end
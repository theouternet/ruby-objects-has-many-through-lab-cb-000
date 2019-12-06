class Doctor
  
  attr_accessor :name, :patient, :appointment
  
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
   Appointment.alla.select{|aa| aa.doctor == self}
 end

def patients
  self.appointments.collect{|a| a.patient}
end
  
end
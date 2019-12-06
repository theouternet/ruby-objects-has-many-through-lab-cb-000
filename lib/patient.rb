class Patient
  
  attr_accessor :name, :doctor, :appointment
  

 def initialize(name)
   @name = name
   @@all << self 
 end
 
 def new_appointment(doctor, date)
   Appointment.new(doctor, self, date)
 end
 
 def appointments
   Appointment.all.select {|a| a.patient == self}
end

def doctors 
  self.appointments.collect{|a| a.doctor}
end
  
end
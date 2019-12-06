class Appointment 
  
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
 def initialize(doctor = "", patient = "", date = "")
   @doctor = doctor
   @patient = patient 
   @date = date
   @@all << self 
 end
 
 
 def self.all 
   @@all 
 end 
 
 def patients
   self.patients
 end
 
 def doctors 
   self.doctor 
 end
 
 
end
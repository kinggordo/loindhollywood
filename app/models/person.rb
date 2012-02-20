class Person < ActiveRecord::Base
  belongs_to :function
  belongs_to :director
  belongs_to :cinematographer
  belongs_to :producer
  belongs_to :malecast
  belongs_to :femalecast
  belongs_to :scriptwriter
  belongs_to :musician
  
  
   
    
  
  
   
  
end

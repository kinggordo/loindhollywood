class Ville < ActiveRecord::Base
  has_many :joints, :dependent => :destroy
  has_many :films, :through => :joints
  has_many :salles, :through => :joints
  
  belongs_to :film
  
  has_many :salles
  
 
   def self.search(search)
    if (search)
      where 'LOWER(name) LIKE :search', 
            { :search => "%#{search.downcase}%" }
    else
      scoped
    end
  end


end

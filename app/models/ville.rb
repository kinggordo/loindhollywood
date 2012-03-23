class Ville < ActiveRecord::Base
  has_many :joints, :dependent => :destroy
  has_many :films, :through => :joints
  has_many :salles, :through => :joints
  
  has_many :jointbs, :dependent => :destroy
  has_many :films, :through => :jointbs
  has_many :salles, :through => :jointbs
  
  has_many :jointcs, :dependent => :destroy
  has_many :films, :through => :jointcs
  has_many :salles, :through => :jointcs
  
  has_many :jointds, :dependent => :destroy
  has_many :films, :through => :jointds
  has_many :salles, :through => :jointds
  
  has_many :jointes, :dependent => :destroy
  has_many :films, :through => :jointes
  has_many :salles, :through => :jointes
  
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

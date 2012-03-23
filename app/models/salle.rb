class Salle < ActiveRecord::Base
  
  
  has_many :joints, :dependent => :destroy
  has_many :villes, :through => :joints
  has_many :films, :through => :joints
  
  has_many :jointbs, :dependent => :destroy
  has_many :villes, :through => :jointbs
  has_many :films, :through => :jointbs
  
  has_many :jointcs, :dependent => :destroy
  has_many :villes, :through => :jointcs
  has_many :films, :through => :jointcs
  
  has_many :jointds, :dependent => :destroy
  has_many :villes, :through => :jointds
  has_many :films, :through => :jointds
  
  has_many :jointes, :dependent => :destroy
  has_many :villes, :through => :jointes
  has_many :films, :through => :jointes
  
  has_many :salleinfos, :dependent => :destroy
  accepts_nested_attributes_for :salleinfos, :reject_if => :all_blank,  :allow_destroy => true
  
  belongs_to :ville
  belongs_to :user
  belongs_to :currency
  
  
  def self.search(search)
    if search
      where 'LOWER(name) LIKE :search OR LOWER(district) LIKE :search OR LOWER(adresse) LIKE :search OR LOWER(owner) LIKE :search OR LOWER(place) LIKE :search OR LOWER(orchester) LIKE :search OR LOWER(open) LIKE :search OR LOWER(source) LIKE :search OR LOWER(comment) LIKE :search OR LOWER(exhib) LIKE :search OR LOWER(soundsys) LIKE :search OR LOWER(number) LIKE :search',
        { :search => "%#{search}%" }
    else
      scoped
    end
  end
end


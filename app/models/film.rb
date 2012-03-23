class Film < ActiveRecord::Base
  
  has_many :joints, :dependent => :destroy
  has_many :villes, :through => :joints
  has_many :salles, :through => :joints
  accepts_nested_attributes_for :joints, :reject_if => proc { |a| a['salle_id'].blank? }, :allow_destroy => true
  
  has_many :jointbs, :dependent => :destroy
  has_many :villes, :through => :jointbs
  has_many :salles, :through => :jointbs
  accepts_nested_attributes_for :jointbs, :reject_if => proc { |a| a['salle_id'].blank? }, :allow_destroy => true
  
  has_many :jointcs, :dependent => :destroy
  has_many :villes, :through => :jointcs
  has_many :salles, :through => :jointcs
  accepts_nested_attributes_for :jointcs, :reject_if => proc { |a| a['salle_id'].blank? }, :allow_destroy => true
  
  has_many :jointds, :dependent => :destroy
  has_many :villes, :through => :jointds
  has_many :salles, :through => :jointds
  accepts_nested_attributes_for :jointds, :reject_if => proc { |a| a['salle_id'].blank? }, :allow_destroy => true
  
  has_many :jointes, :dependent => :destroy
  has_many :villes, :through => :jointes
  has_many :salles, :through => :jointes
  accepts_nested_attributes_for :jointes, :reject_if => proc { |a| a['salle_id'].blank? }, :allow_destroy => true
  
  has_many :functions, :dependent => :destroy
  accepts_nested_attributes_for :functions, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :directors, :dependent => :destroy
  accepts_nested_attributes_for :directors, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :malecasts, :dependent => :destroy
  accepts_nested_attributes_for :malecasts, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :femalecasts, :dependent => :destroy
  accepts_nested_attributes_for :femalecasts, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :cinematographers, :dependent => :destroy
  accepts_nested_attributes_for :cinematographers, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :producers, :dependent => :destroy
  accepts_nested_attributes_for :producers, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :musicians, :dependent => :destroy
  accepts_nested_attributes_for :musicians, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :scriptwriters, :dependent => :destroy
  accepts_nested_attributes_for :scriptwriters, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :tecnicals, :dependent => :destroy
  accepts_nested_attributes_for :tecnicals, :reject_if => :all_blank,  :allow_destroy => true
  
  belongs_to :moviselect
  
  has_many :film_users
  has_many :users, :through => :film_users
  
  belongs_to :sound
  belongs_to :color
  
  
 
  def self.search(search)
    if (search)
      where 'name LIKE :search OR titlea LIKE :search OR titleb LIKE :search OR titlec LIKE :search OR titled LIKE :search OR titlee LIKE :search OR titlef LIKE :search OR based_on LIKE :search OR autor LIKE :search OR company LIKE :search OR country LIKE :search OR lenght LIKE :search OR based_on LIKE :search', 
            { :search => "%#{search}%" }
    else
      scoped
    end
  end

  
  validates_uniqueness_of :name
  
  
end

class Salle < ActiveRecord::Base
  
  
  has_many :joints, :dependent => :destroy
  has_many :villes, :through => :joints
  has_many :films, :through => :joints
  
  has_many :salleinfos, :dependent => :destroy
  accepts_nested_attributes_for :salleinfos, :reject_if => :all_blank,  :allow_destroy => true
  
  belongs_to :ville
  belongs_to :user
  belongs_to :currency
  
  has_many :salle_prices
  has_many :prices, :through => :salle_prices
  accepts_nested_attributes_for :prices, :allow_destroy => true
 
  before_save :mark_prices_for_removal

  def mark_prices_for_removal
    prices.each do |price|
      price.mark_for_destruction if ( price.currency_id.nil? || price.number.blank? ) 
    end
  end


  def self.search(search)
    if search
      ville_ids  = Ville.search(search).all
      salleinfo_ids = Salleinfo.search(search).all
      additional_ids_from_salleinfo_ids = salleinfo_ids.select{ |x| !x.salle.nil?}.collect { |x| x.salle.id }

      where 'LOWER(name) LIKE :search OR LOWER(district) LIKE :search OR LOWER(adresse) LIKE :search OR LOWER(owner) LIKE :search OR LOWER(place) LIKE :search OR LOWER(orchester) LIKE :search OR LOWER(open) LIKE :search OR LOWER(source) LIKE :search OR LOWER(comment) LIKE :search OR LOWER(exhib) LIKE :search OR LOWER(soundsys) LIKE :search OR ville_id IN (:ville_ids) OR id IN (:additional_ids_from_salleinfo_ids)',
        { :search => "%#{search}%", :ville_ids => ville_ids, :additional_ids_from_salleinfo_ids => additional_ids_from_salleinfo_ids }
    else
      scoped
    end
  end
end


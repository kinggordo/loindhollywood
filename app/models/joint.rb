class Joint < ActiveRecord::Base
  
  belongs_to :film
  belongs_to :salle
  belongs_to :ville
  belongs_to :currency
  
  has_many :onstageattribs, :dependent => :destroy
  accepts_nested_attributes_for :onstageattribs, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :shortmovattribs, :dependent => :destroy
  accepts_nested_attributes_for :shortmovattribs, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :featuremovattribs, :dependent => :destroy
  accepts_nested_attributes_for :featuremovattribs, :reject_if => :all_blank,  :allow_destroy => true
  
  def self.search(search)
    if (search)
      ville_ids = Ville.search(search).all.collect{ |x| x.id }

      where 'LOWER(titreoriginal) LIKE :search OR LOWER(titreoriginalb) LIKE :search OR LOWER(genre) LIKE :search OR LOWER(date) LIKE :search OR LOWER(price) LIKE :search OR LOWER(show) LIKE :search OR LOWER(schedule) LIKE :search OR LOWER(onstage) LIKE :search OR LOWER(episode) LIKE :search OR LOWER(audience) LIKE :search OR LOWER(source) LIKE :search OR LOWER(comment) LIKE :search OR LOWER(day) LIKE :search OR LOWER(daybis) LIKE :search OR LOWER(dayextra) LIKE :search OR LOWER(number) LIKE :search OR ville_id IN (:ville_ids)', 
            { :search => "%#{search.downcase}%", :ville_ids => ville_ids }
    else
      scoped
    end
  end

 
end

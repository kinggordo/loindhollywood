class Salleinfo < ActiveRecord::Base
  
  belongs_to :salle
  
  has_many :salleinfoattribs, :dependent => :destroy
  accepts_nested_attributes_for :salleinfoattribs, :reject_if => :all_blank,  :allow_destroy => true

  def self.search(search)
    if (search)
      where 'LOWER(name) LIKE :search',
      { :search => "%#{search.downcase}%" }
    else
      scoped
    end
  end

end

class Office < ActiveRecord::Base
  
  def self.search(search)
    if search
      where('titre ILIKE ? OR titreo ILIKE ? OR rea ILIKE ? OR year ILIKE ? OR dure ILIKE ? OR note ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      scoped
    end
  end
end

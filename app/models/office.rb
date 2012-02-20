class Office < ActiveRecord::Base
  
  def self.search(search)
    if search
      where('titre LIKE ? OR titreo LIKE ? OR rea LIKE ? OR year LIKE ? OR dure LIKE ? OR note LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      scoped
    end
  end
end

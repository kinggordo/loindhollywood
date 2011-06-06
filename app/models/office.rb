class Office < ActiveRecord::Base
  
  def self.search(search)
    if search
      where('titre LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end

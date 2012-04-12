class Office < ActiveRecord::Base
  
  def self.search(search)
    if search
      where('LOWER(titre) LIKE :search OR LOWER(titreo) LIKE :search OR LOWER(rea) LIKE :search OR LOWER(year) LIKE :search OR LOWER(country) LIKE :search OR LOWER(dure) LIKE :search OR LOWER(son) LIKE :search OR LOWER(producer) LIKE :search OR LOWER(lieu) LIKE :search OR LOWER(format) LIKE :search OR LOWER(support) LIKE :search OR LOWER(genre) LIKE :search OR LOWER(themea) LIKE :search OR LOWER(themeb) LIKE :search OR LOWER(note) LIKE :search', 
            { :search => "%#{search}%" })
    else
      scoped
    end
  end
end

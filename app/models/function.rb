class Function < ActiveRecord::Base
  belongs_to :film
  
  has_many :people, :dependent => :destroy
  accepts_nested_attributes_for :people, :reject_if => :all_blank,  :allow_destroy => true
   
  def self.search(search)
    if (search)
      where 'LOWER(name) LIKE :search', 
            { :search => "%#{search.downcase}%" }
    else
      scoped
    end
  end

   
end

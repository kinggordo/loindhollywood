class Function < ActiveRecord::Base
  belongs_to :film
  
  has_many :people, :dependent => :destroy
  accepts_nested_attributes_for :people, :reject_if => :all_blank,  :allow_destroy => true
   
  def self.search(search)
    if (search)
      people_ids = Person.search(search).all
      additional_ids = people_ids.select { |x| !x.function.nil? }.collect { |x| x.function.id }
      where 'LOWER(name) LIKE :search OR id IN(:additional_ids)', 
            { :search => "%#{search.downcase}%", :additional_ids => additional_ids }
    else
      scoped
    end
  end

   
end

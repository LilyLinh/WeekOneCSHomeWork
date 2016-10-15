class Section
 def self.all
 	%w(Breakfast Lunch Dinner Drink)
 end

 def self.search(search)
  where("name ILIKE ?", "%#{search}%") 
  end
end
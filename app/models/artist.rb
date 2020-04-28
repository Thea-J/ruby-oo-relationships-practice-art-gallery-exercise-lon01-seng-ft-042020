class Artist

  attr_reader :name, :years_experience

  @@all = [ ]

   def initialize(name, years_experience)
     @name = name
     @years_experience = years_experience
     @@all << self
   end

   def self.all
     @@all
   end

  #Instance method that returns an array of all the paintings by an artist
   def paintings
     Painting.all.select{|painting| painting.artist == self}
   end

  #Instance method that returns an array of all the unique galleries that an artist has paintings in
   def galleries
     self.paintings.map{|painitng| painitng.gallery}.uniq
   end

  #Instance method that returns an array of all the unique cities that an artist has paintings in
   def cities
     self.galleries.map{|painitng| painitng.city}
   end

  #Class method returns an integer that is the total years of experience of all artists
   def self.total_experience
     self.all.sum{|artist| artist.years_experience }
   end

  #Class method returns an instance of the artist with the highest amount of paintings per year of experience
   def self.most_prolific
    #Iterate over each artist
    #calculate no. of paintings per artist
    #calc yrs of exp per artist
    #max(no of painitngs/yrs of exp)
    self.all.max_by{|artist| artist.paintings.size/artist.years_experience.to_f}
   end

  #Instance method that given the arguments of title, price and gallery, creates a new painting belonging to that artist
   def create_painting(title, price, gallery)
     Painting.new(self, title, price, gallery)
   end

end

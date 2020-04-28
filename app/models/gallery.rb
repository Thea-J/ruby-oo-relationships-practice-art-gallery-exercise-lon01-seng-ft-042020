class Gallery

  attr_reader :name, :city
  
  @@all = [ ]

  def initialize(name, city)
    @name = name
    @city = city
    @@all <<self
  end

  def self.all
    @@all
  end

  #Instance method that returns an array of all the paintings in a gallery
  def paintings
    Painting.all.select{|painting| painting.gallery == self}
  end

  #Instance method that returns a unique array of all artists that have a painting in a gallery
  def artists
    self.paintings.map{|painitng| painitng.artist}.uniq
  end

  #Instance method that returns a unique array of the names of all artists that have a painting in a gallery
  def artist_names
    self.artists.map{|painitng| painitng.name}
  end

  #Instance method that returns an instance of the most expensive painting in a gallery
  def most_expensive_painting
    self.paintings.max_by{|painitng| painitng.price}
  end

end

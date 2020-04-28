class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(artist, title, price, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

#Class method returns an array of all the paintings
  def self.all
    @@all
  end

#Class method returns an integer that is the total price of all paintings
  def self.total_price
    self.all.sum{|painting| painting.price}
  end
end

require_relative '../config/environment.rb'

a1 = Artist.new("Thea J", 5)
a2 = Artist.new("Vite Loi", 17)

g1 = Gallery.new("ZuCot", "ATL")
g2 = Gallery.new("Sacchi", "London")


p1 = Painting.new(a1, "Sassy", 5625, g2)
p2 = Painting.new(a1, "Savage", 5361, g2)
p3 = Painting.new(a1, "Bougie", 3248, g1)
p4 = Painting.new(a2, "Classy", 2421787, g1)
binding.pry

puts "Bob Ross rules."

class Item < ApplicationRecord
  enum brand: { A:0, B:1, C:2, D:3, E:4 }
  enum category: { OUTER:0, TOPS:1, BOTOMS:2, SHOES:3 }
  enum country: { JPN:0, USA:1, GTR:2, DEU:3, FRA:4, ITA:5 }
end

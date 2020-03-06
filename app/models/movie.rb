class Movie < ApplicationRecord
  has_many :actors
  has_many :actors, through: :roles

  
end

# has many gives us these methods:
# movie.actors
# movie.actors.build

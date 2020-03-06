~scope method:  filter movies by actor
~helper methods:
~model method:

Movie(title:string, description:text)
... has_many :actors
... has_many :actors, through: :roles

actor
...has_many :movies
...has_many :movies, through: :roles

Role
...belongs_to :actors
...belongs_to :movie

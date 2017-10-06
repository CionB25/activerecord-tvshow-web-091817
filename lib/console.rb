require 'pry'
require_relative './movie.rb'
require_relative './viewer.rb'
require_relative './watchlisting.rb'


cb4 = Movie.new("CB4")

me = Viewer.new("me")

newList = Watchlisting.new(cb4, me, 4)

dtrt = Movie.new("Do The Right Thing")
mbb = Movie.new("Mo Betta Blues")
drs = Movie.new("Dirty Rotten Scoundrels")

movies = [dtrt, mbb, drs]

# dtrt.rating = 7
# drs.rating = 3


# me.add_to_watchlist(movies)



Pry.start

class Watchlisting
# **Watchlisting.all
# returns all of watchlistings
# **Watchlisting#viewer
# returns the viewer associated with this watchlisting
# **Watchlisting#movie
# returns the movie associated with this watchlisting
# **Watchlisting#rating
# returns the viewer's rating for the movie associated with this watchlisting

  attr_accessor :movie, :viewer, :rating

  @@all = []

  def initialize(movie, viewer, rating = nil)
    @movie = movie
    @viewer = viewer
    # @rating = rating
    movie.rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end

class Viewer
# **Viewer.all
# returns all of the viewers
# **Viewer#add_to_watchlist(movies)
# this method should receive an array of one or more movie instances and add them to the viewer's watchlisting
# **Viewer#rate_movie(movie, rating)
# given a movie on a viewer's watchlisting and a rating (a number between 1 and 5), assign the rating to the movie. Where should the rating that an individual viewer gives to an individual movie be stored?

attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_to_watchlist(movies)
    movies.each do |movie|
      Watchlisting.new(movie, self, rating = nil)
    end
  end

  def rate_movie(movie, rating)
    movie.rating = rating
  end

  def self.all
    @@all
  end
end

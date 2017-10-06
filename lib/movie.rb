class Movie
# **Movie.all
# returns an array of all movies
# **Movie#watchlistings
# returns an array of all the watchlist objects that contain that movie
# **Movie#viewers
# returns all of the viewers who added this movie to their watchlist
# Movie#average_rating
# returns the average of all ratings across all viewers watchlist ratings
# Movie.highest_rated
# should return the movie with the highest average rating across all the viewers watchlistings
  attr_accessor :name, :rating

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def watchlistings
    Watchlisting.all.select do |list|
      list.movie == self
    end
  end

  def viewers
    movieList = Watchlisting.all.select {|list| list.movie == self}

    movieList.select do |list|
      list.viewer
    end
  end

  def average_rating
    # self.rat
    # end.last
  end

  def self.highest_rated
    # all.sort do |a, b|
    #   a.rating <=> b.rating
    # end.last
  end

def self.all
  @@all
end


end

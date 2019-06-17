require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    x = Show.highest_rating
    Show.find_by(rating:x)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    x = self.lowest_rating
    Show.find_by(rating:x)
  end


  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    x = Show.where("rating > 5")
    # x.order(name: :desc)
  end

  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
  end

end

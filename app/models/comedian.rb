class Comedian < ActiveRecord::Base

  validates_presence_of :name, :age, :city, :image_url

  has_many :specials

  def self.average_age
    average(:age)
  end

  def self.unique_cities
    select(:city).distinct.map(&:city)
  end

  def self.total_specials
    sum(:specials)
  end

end

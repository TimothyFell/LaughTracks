class Comedian < ActiveRecord::Base

  validates_presence_of :name, :age, :city, :image_url

  has_many :specials

  def self.average_age
    average(:age)
  end

  def self.find_comedians(params)
    if params[:age] != nil
      where(age: params[:age])
    # elsif params["sort"] == "name" || params["sort"] == "city" || params["sort"] == "age"
    #   column = params["sort"].to_sym
    #   order(column)
    else
      all
    end
  end

  def self.unique_cities
    select(:city).distinct.pluck(:city)
  end

end

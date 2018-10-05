class Special < ActiveRecord::Base

  validates_presence_of :name, :length, :comedian_id

  belongs_to :comedian

  def self.average_length
    average(:length)
  end

  # def self.with_comedians
  #   joins(:comedians)
  # end

end

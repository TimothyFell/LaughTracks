class Special < ActiveRecord::Base

  validates_presence_of :name, :length, :comedian_id

  belongs_to :comedian

  def self.average_length
    average(:length)
  end

  def self.total_specials(comedians)
    self.by_comedians(comedians).count
  end

  def self.by_comedians(comedians)
    comedian_ids = comedians.pluck(:id)
    where(comedian_id: comedian_ids)
  end

end

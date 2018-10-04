class ComedianSpecialCount < ActiveRecord::Migration[5.2]
  def change
    add_column :comedians, :special_count, :integer
  end
end

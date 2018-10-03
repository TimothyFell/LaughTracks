class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text :name
      t.integer :length
      t.integer :image_url
      t.integer :comedian_id

      t.timestamps null: false
    end
  end
end

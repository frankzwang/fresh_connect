class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

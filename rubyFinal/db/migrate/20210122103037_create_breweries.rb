class CreateBreweries < ActiveRecord::Migration[6.1]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :country
      t.string :address

      t.timestamps
    end
  end
end

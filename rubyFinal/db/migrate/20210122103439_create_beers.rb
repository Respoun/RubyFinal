class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :content
      t.integer :price
      t.integer :rating
      t.string :name
      t.string :desc
      t.references :brewery, null: false, foreign_key: true
      t.references :style, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class AddUserToBrewery < ActiveRecord::Migration[6.1]
  def change
    add_reference :breweries, :user, null: false, foreign_key: true
  end
end

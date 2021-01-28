class RemoveUserFromBeer < ActiveRecord::Migration[6.1]
  def change
    remove_reference :beers, :user, null: false, foreign_key: true
  end
end

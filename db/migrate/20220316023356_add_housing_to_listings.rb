class AddHousingToListings < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :housingsize, null: true, foreign_key: true
  end
end

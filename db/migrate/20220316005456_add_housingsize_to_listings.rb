class AddHousingsizeToListings < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :housingsizes, null: true, foreign_key: true
  end
end

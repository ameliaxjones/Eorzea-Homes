class RemoveHousingsizesFromListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :housingsizes_id, :integer
  end
end

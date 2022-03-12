class AddBodyToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :body, :text
  end
end

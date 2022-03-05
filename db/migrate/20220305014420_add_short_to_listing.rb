class AddShortToListing < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :short_body, :string
  end
end

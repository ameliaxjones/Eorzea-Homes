class AddTypesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :buyer, :boolean
    add_column :users, :seller, :boolean
  end
end

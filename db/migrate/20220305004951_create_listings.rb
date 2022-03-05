class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.float :price
      t.boolean :open
      t.integer :user_id

      t.timestamps
    end
  end
end

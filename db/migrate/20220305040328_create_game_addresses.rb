class CreateGameAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :game_addresses do |t|
      t.string :datacenter
      t.string :location
      t.float :plot
      t.float :ward
      t.float :roomnumber

      t.timestamps
    end
  end
end

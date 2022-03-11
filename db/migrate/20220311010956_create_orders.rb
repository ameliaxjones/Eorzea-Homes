class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :listing, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :purchase_price
      t.references :game_address, null: false, foreign_key: true
      t.boolean :purchase_status

      t.timestamps
    end
  end
end

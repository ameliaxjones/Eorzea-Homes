class CreateHousingsizes < ActiveRecord::Migration[6.1]
  def change
    create_table :housingsizes do |t|
      t.string :value

      t.timestamps
    end
  end
end

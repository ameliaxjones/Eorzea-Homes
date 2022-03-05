class CreateHCats < ActiveRecord::Migration[6.1]
  def change
    create_table :h_cats do |t|
      t.references :listing, null: false, foreign_key: true
      t.boolean :small
      t.boolean :med
      t.boolean :large
      t.boolean :apartment

      t.timestamps
    end
  end
end

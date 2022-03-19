class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.integer :score
      t.references :reviewer, null: false 
      t.references :reviewee, null: false
      t.timestamps
    end
    add_foreign_key :reviews, :users, column: :reviewer_id
    add_foreign_key :reviews, :users, column: :reviewee_id

  end
end

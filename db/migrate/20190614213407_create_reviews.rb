class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :decription
      t.integer :rating

      t.timestamps null: false
    end
  end
end

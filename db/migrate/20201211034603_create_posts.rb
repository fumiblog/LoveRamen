class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :ramenshop_id
      t.integer :genre_id
      t.string :name
      t.string :comment
      t.integer :score

      t.timestamps
    end
  end
end

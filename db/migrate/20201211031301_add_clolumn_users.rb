class AddClolumnUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :genre_id, :integer
  end
end

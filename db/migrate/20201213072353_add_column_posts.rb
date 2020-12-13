class AddColumnPosts < ActiveRecord::Migration[5.2]
  def up
    add_column :posts, :image_id, :string
  end
end

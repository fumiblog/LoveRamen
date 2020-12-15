class AddColumnPosts2 < ActiveRecord::Migration[5.2]
  def down
    remove_column :posts, :price, :integer
  end
  
  def up
    add_column :posts, :submenu, :integer
  end
end

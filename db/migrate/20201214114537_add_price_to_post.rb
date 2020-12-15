class AddPriceToPost < ActiveRecord::Migration[5.2]
  def up
    add_column :posts, :price, :integer
  end
end

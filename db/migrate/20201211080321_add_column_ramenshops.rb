class AddColumnRamenshops < ActiveRecord::Migration[5.2]
  def up
    add_column :ramenshops, :image_id, :integer
  end
end

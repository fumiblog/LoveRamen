class ChangDataImageIdToRamenshops < ActiveRecord::Migration[5.2]
  def change
    change_column :ramenshops, :image_id, :string
  end
end

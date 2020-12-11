class CreateRamenshops < ActiveRecord::Migration[5.2]
  def change
    create_table :ramenshops do |t|
      t.string :name

      t.timestamps
    end
  end
end

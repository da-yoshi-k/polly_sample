class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.string :image_name, null: false

      t.timestamps
    end
  end
end

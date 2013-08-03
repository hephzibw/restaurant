class CreateCaves < ActiveRecord::Migration
  def change
    create_table :caves do |t|
      t.string :name
      t.string :address
      t.string :speciality
      t.integer :phone_number

      t.timestamps
    end
  end
end

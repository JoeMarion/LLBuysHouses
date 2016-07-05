class CreateHouse < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :address
      t.string :phone_number
      t.string :email
      t.timestamps null: false
    end
  end
end

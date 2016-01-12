class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.text :Make
      t.text :Model
      t.text :Type
      t.integer :Asset_Tag

      t.timestamps null: false
    end
  end
end

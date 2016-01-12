class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.date :checkout
      t.date :return

      t.timestamps null: false
    end
  end
end

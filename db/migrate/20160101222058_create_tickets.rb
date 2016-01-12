class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :status
      t.string :priority

      t.timestamps null: false
    end
  end
end

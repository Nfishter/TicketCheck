class AddCommentsToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :comments, :text
  end
end

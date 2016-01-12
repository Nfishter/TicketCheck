class AddDefaultValueToUser < ActiveRecord::Migration
  def change
  	change_column :tickets, :user_id, :integer, :default => 5
  end
end

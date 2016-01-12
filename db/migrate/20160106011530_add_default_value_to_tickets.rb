class AddDefaultValueToTickets < ActiveRecord::Migration
  def change
  	change_column :tickets, :status, :string, :default => 'Open'
  end
end

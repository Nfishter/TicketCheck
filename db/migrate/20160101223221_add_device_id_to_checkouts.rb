class AddDeviceIdToCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :device_id, :integer
  end
end

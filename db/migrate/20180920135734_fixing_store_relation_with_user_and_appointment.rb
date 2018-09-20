class FixingStoreRelationWithUserAndAppointment < ActiveRecord::Migration[5.1]
  def change
    remove_column :appointments, :studio_id
    remove_column :users, :studio_id
  end
end

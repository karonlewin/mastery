class AddStartAtAndEndAtToAppointment < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :start_at, :datetime
    add_column :appointments, :end_at, :datetime
    remove_column :appointments, :scheduled_at
  end
end

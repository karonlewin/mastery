class AddClientToAppointment < ActiveRecord::Migration[5.1]
  def change
    remove_column :appointments, :client
    add_reference :appointments, :client, foreign_key: true
  end
end

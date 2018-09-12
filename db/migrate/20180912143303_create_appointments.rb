class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :client
      t.time :scheduled_at
      t.text :observations

      t.timestamps
    end
  end
end

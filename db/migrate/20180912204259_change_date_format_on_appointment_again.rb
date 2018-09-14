class ChangeDateFormatOnAppointmentAgain < ActiveRecord::Migration[5.1]
  def change
    change_column :appointments, :scheduled_at, :time
  end
end

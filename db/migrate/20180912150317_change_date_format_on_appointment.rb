class ChangeDateFormatOnAppointment < ActiveRecord::Migration[5.1]
  def change
    change_column :appointments, :scheduled_at, :datetime
  end
end

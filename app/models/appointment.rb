class Appointment < ApplicationRecord
  validates_presence_of :client, :scheduled_at
end

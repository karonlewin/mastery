class Appointment < ApplicationRecord
  validates_presence_of :client, :start_at, :end_at
  # belongs_to :studio
  belongs_to :user
end

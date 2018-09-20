class Appointment < ApplicationRecord
  validates_presence_of :client, :start_at, :end_at
  belongs_to :store
  belongs_to :user
end

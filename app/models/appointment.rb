class Appointment < ApplicationRecord
  validates_presence_of :start_at, :end_at
  belongs_to :store
  belongs_to :user
  belongs_to :client
end

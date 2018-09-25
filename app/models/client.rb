class Client < ApplicationRecord
  validates_presence_of :name, :mobile_number
  belongs_to :store
end

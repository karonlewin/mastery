class Employee < ApplicationRecord
  validates_presence_of :name
  belongs_to :store
end

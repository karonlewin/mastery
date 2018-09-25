class Service < ApplicationRecord
  validates_presence_of :name, :price
  belongs_to :store
end

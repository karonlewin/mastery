class Sale < ApplicationRecord
  belongs_to :client
  belongs_to :store
  belongs_to :user
end

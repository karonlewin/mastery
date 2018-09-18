class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :trackable, :recoverable, :rememberable, :validatable

  has_many :appointment
  # belongs_to :store
end

class User < ApplicationRecord
  devise :database_authenticatable, :confirmable,
         :trackable, :recoverable, :rememberable, :validatable

  has_many :appointment
  belongs_to :employee
end

class Store < ApplicationRecord
  after_create :create_tenant
  validates_presence_of :name, :subdomain
  has_many :appointment

  private
    def create_tenant
      Apartment::Tenant.create(subdomain)
    end
end

class AddSubdomainToStore < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :subdomain, :string
  end
end

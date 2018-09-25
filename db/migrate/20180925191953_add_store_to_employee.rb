class AddStoreToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_reference :employees, :store, foreign_key: true
  end
end

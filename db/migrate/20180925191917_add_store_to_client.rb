class AddStoreToClient < ActiveRecord::Migration[5.1]
  def change
    add_reference :clients, :store, foreign_key: true
  end
end

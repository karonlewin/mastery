class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.decimal :total
      t.references :client, foreign_key: true
      t.references :store, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

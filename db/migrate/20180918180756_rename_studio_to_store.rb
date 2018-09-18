class RenameStudioToStore < ActiveRecord::Migration[5.1]
  def change
    rename_table :studios, :stores
  end
end

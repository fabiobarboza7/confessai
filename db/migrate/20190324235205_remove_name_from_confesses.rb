class RemoveNameFromConfesses < ActiveRecord::Migration[5.2]
  def change
    remove_column :confesses, :name, :string
  end
end

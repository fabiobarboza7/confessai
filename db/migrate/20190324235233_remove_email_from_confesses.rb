class RemoveEmailFromConfesses < ActiveRecord::Migration[5.2]
  def change
    remove_column :confesses, :email, :string
  end
end

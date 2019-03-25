class AddUserToConfesses < ActiveRecord::Migration[5.2]
  def change
    add_reference :confesses, :user, foreign_key: true
  end
end

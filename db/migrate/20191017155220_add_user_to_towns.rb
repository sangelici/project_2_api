class AddUserToTowns < ActiveRecord::Migration[5.2]
  def change
    add_reference :towns, :user, foreign_key: true
  end
end

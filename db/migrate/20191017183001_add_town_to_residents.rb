class AddTownToResidents < ActiveRecord::Migration[5.2]
  def change
    add_reference :residents, :town, foreign_key: true
  end
end

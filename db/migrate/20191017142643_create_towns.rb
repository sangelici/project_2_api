class CreateTowns < ActiveRecord::Migration[5.2]
  def change
    create_table :towns do |t|
      t.string :name
      t.string :town_fruit
      t.string :mayor

      t.timestamps
    end
  end
end

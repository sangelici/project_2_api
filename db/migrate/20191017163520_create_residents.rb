class CreateResidents < ActiveRecord::Migration[5.2]
  def change
    create_table :residents do |t|
      t.string :name
      t.string :animal_type
      t.date :birthday
      t.string :hobby

      t.timestamps
    end
  end
end

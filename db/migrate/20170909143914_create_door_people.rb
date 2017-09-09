class CreateDoorPeople < ActiveRecord::Migration[5.1]
  def change
    create_table :door_people do |t|
      t.references :door, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end

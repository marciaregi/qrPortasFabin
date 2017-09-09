class CreateDoors < ActiveRecord::Migration[5.1]
  def change
    create_table :doors do |t|
      t.text :schedule
      t.text :description
      t.integer :number

      t.timestamps
    end
  end
end

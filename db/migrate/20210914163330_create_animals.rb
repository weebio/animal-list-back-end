class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
    
      t.string :image
      t.string :name
      t.string :age
      t.string :breed
      t.integer :caretaker_id

    end
  end
end

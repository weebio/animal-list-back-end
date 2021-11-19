class CreateCaretakers < ActiveRecord::Migration[6.1]
  def change
    create_table :caretakers do |t|
   
      t.string :image
      t.string :name
      t.integer :age
      t.string :bio
      
    end
  end
end

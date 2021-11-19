class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|

      t.datetime :meeting_time
      t.integer :animal_id
      t.integer :caretaker_id

      end
  end
end

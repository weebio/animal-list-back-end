class Caretaker < ActiveRecord::Base

    # has_many :appointments
    # has_many :animals, through: :appointments
    has_many :animals

end
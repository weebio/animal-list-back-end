class Animal < ActiveRecord::Base

    # has_many :appointments
    # has_many :caretakers, through: :appointments
    has_many :caretakers
end
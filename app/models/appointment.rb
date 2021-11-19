class Appointment <ActiveRecord::Base

    belongs_to :caretaker
    belongs_to :animal

    end
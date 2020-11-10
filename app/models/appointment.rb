class Appointment < ApplicationRecord
    belongs_to :user_swag
    belongs_to :user
end
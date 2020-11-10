class User < ApplicationRecord
    has_many :user_swags
    has_many :swags, through: :user_swags
    has_many :appointments, through: :user_swags
    has_many :rented_items, foreign_key: "user_id", class_name: "Appointment"

    has_secure_password
end 
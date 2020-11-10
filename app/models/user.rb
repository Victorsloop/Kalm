class User < ApplicationRecord
    has_many :user_swags
    has_many :swags, through: :user_swags
    has_many :appointments, through: :user_swags

    has_secure_password
end 
class Swag < ApplicationRecord 
    has_many :user_swags
    has_many :users, through: :user_swags
    has_many :appointments , through: :user_swags
end 
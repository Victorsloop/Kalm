class Swag < ApplicationRecord 
    has_many :user_swag
    has_many :users, through: :user_swag
    has_many :appointments , through: :user_swag
end 
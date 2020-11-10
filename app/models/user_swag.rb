class UserSwag < ApplicationRecord 
    belongs_to :user 
    belongs_to :swag
    # validates :swag_id, uniqueness:true 
end 
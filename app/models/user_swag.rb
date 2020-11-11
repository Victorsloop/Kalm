class UserSwag < ApplicationRecord 
    belongs_to :user 
    belongs_to :swag
    # validates :swag_id, uniqueness:true
    

    #Need to fix this
    # def swag_name=(swag_name)
    #     self.swag = Swag.find_or_create_by(name: swag_name)
    # end

    # def swag_name
    #     self.swag ? self.swag.name : nil
    # end

    # def swag_image=(image)
    #     self.swag.update(image_url: image)
    # end

    # def swag_image
    #     self.swag ? self.swag.image : nil
    # end


end 
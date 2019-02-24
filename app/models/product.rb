class Product < ApplicationRecord
    
mount_uploader :image, ImageUploader

def self.search(search)
	if search
		self.where(name: search)
	else
		Product.all
	end
end
end

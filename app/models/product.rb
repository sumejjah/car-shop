class Product < ApplicationRecord

  COLORS_LIST = ["red", "black", "green", "grey", "white"]
    
mount_uploader :image, ImageUploader

def self.search(search)
  if search
    result = [];

    Product.all.each do |product|
      if product.name.downcase.include? search.downcase
        result << product
      end
    end

    result
	else
		Product.all
	end
end

scope :color, -> (color) { where color: color }

end

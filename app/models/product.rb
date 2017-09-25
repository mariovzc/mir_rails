class Product < ApplicationRecord
  has_and_belongs_to_many :categories,
    :through => :product_categories
  
end

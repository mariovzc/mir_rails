module FormHelper
  def setup_product(product)
    (Category.all - product.categories).each do |ct|
      product.product_categories.build(:category => ct)
    end
    product
  end
end
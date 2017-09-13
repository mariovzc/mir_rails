class ProductsController < ApplicationController
  before_action :set_categories, only: [:new, :edit]
  def index
  end

  def new
    @product = Product.new
  end
  def create
    asd
  end

  def edit
  end
  private
  def set_categories
    @categories = Category.all
  end
  def product_params
    params.require(:product).permit(:name, :price, @categories)
    
  end
end

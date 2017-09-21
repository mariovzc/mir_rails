class ProductsController < ApplicationController
  before_action :set_categories, only: [:new, :edit]
  attr_accessor :product_categories_attributes
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end
  def create
    @product = Product.new(product_params)  
    if @product.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end
  private
  def set_categories
    @categories = Category.all
  end
  def product_params
    params.require(:product).permit(:name, :price, :product_categories_attributes =>[:_destroy,:category_id])
    
  end
end

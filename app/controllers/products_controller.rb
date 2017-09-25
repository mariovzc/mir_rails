class ProductsController < ApplicationController
  before_action :set_categories, only: [:new, :edit]
  before_action :set_product, only: [:edit, :update, :destroy]
  
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

  def update
    @product.product_categories.destroy_all
    if @product.update(product_params)
      redirect_to root_url
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to root_url
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def set_categories
    @categories = Category.all
  end

  def product_params
    params.require(:product).permit(:name, :price, :product_categories_attributes =>[:_destroy,:category_id])
    
  end
end

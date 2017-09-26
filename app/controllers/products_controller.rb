class ProductsController < ApplicationController
  before_action :set_product, only: [:edit,:update, :destroy]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @categories = Category.all
    @product.categories.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save      
      redirect_to '/products'      
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to '/products'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to '/products'
  end

  protected
  def set_product
    @product = Product.find(params[:id])
  end
  def product_params
    params.require(:product).permit(:name, :price, category_ids: [])
  end
end
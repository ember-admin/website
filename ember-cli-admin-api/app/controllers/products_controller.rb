class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    render json: Product.all
  end

  def show
    render json: @product
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product
    else
      render json: {}, status: 422
    end
  end

  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: {}, status: 422
    end
  end

  def destroy
    @product.destroy
    render json: {}, status: 200
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:title, :price)
    end
end

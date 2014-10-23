class Admin::Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all.paginate(page: params[:page], per_page: params[:per_page])
    render json: @products, meta: {total: Product.count}
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
    render status: 204, nothing: true
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:title, :price, :company_id, :user_id)
    end
end

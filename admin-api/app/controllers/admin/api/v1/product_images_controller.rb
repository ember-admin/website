require 'file_string_io'

class Admin::Api::V1::ProductImagesController < ApplicationController

  def index
    avatars = ProductImage.paginate(page: params[:page], per_page: params[:per_page]).order('id desc')
    render json: avatars, each_serialzier: ProductImageSerializer
  end

  def destroy
    ProductImage.find_by_id(params[:id]).try(:destroy)
    render status: 204, nothing: true
  end

  def show
    render json: ProductImage.find(params[:id]), serialize: ProductImageSerializer
  end

  def create
    avatar = ProductImage.new(fetch_params)
    file = FileStringIO.new(request.raw_post, params[:original_filename])
    avatar.data = file
    avatar.save!
    render json: avatar, serialize: ProductImageSerializer
  end

  def update
    avatar = ProductImage.find(params[:id])
    avatar.update_attributes(permit_params)
    render json: avatar, serialize: ProductImageSerializer
  end

  private

  def permit_params
    options = params.require(:product_image).permit(:id, :assetable_id, :assetable_type, :guid, :type, :data)
    options.delete(:data) unless options[:data].present?
    options
  end

  def fetch_params
    options = {}
    [:assetable_id, :assetable_type, :guid, :type, :is_main].each do |param|
      options[param] = params[param]
    end
    options
  end

end
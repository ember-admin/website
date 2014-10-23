require 'admin_search_ransack'

class Admin::Api::V1::UsersController < ApplicationController
  include AdminSearchRansack

  before_action :set_user, only: [:show, :update, :destroy]

  def index
    search_params = map_to_ransack(params[:q]).merge!(map_ransack_sort(params[:sort], params[:orderAscending]))
    q = User.search(search_params).result
    @users = q.paginate(page: params[:page], per_page: params[:per_page])
    render json: @users, meta: {total: q.count}
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render json: {}, status: 422
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: {}, status: 422
    end
  end

  def destroy
    @user.destroy
    render status: 204, nothing: true
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :avatar)
    end
end

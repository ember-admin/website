class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :update, :destroy]

  def index
    render json: Company.all
  end

  def show
    render json: @company
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      render json: @company
    else
      render json: {}, status: 422
    end
  end

  def update
    if @company.update(company_params)
      render json: @company
    else
      render json: {}, status: 422
    end
  end

  def destroy
    @company.destroy
    render json: {}, status: 200
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:title, :logo)
    end
end

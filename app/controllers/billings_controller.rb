class BillingsController < ApplicationController
  before_action :set_project

  def new
    @billing = Billing.new
    @billings = @project.billings.includes(:user)
  end

  def create
    Billing.create(billing_params)
  end

  private
  def billing_params
    params.require(:billing).permit(:count_1,:count_2,:count_3).merge(user_id: current_user.id, project_id: params[:project_id])
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

end

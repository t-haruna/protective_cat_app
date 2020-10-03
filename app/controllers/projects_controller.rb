class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @billings= Billing.all
  end

  def new
    @project = Project.new
  end

  def create
    Project.create(project_params)
  end

  def show
    @project = Project.find(params[:id])
    @billings= Billing.all
  end

  private
  def project_params
    params.require(:project).permit(:title,:image,:text,:profile,:target_amount,:tarm,:return_title_1,:return_price_1,:return_title_2,:return_price_2,:return_title_3,:return_price_3).merge(user_id: current_user.id)
  end

end

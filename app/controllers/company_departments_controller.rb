class CompanyDepartmentsController < ApplicationController
  before_action :set_company_department, only: [:show, :edit, :update, :destroy]

  # GET /company_departments
  # GET /company_departments.json
  def index
    @company_departments = CompanyDepartment.all
  end

  # GET /company_departments/1
  # GET /company_departments/1.json
  def show
  end

  # GET /company_departments/new
  def new
    @company_department = CompanyDepartment.new
  end

  # GET /company_departments/1/edit
  def edit
  end

  # POST /company_departments
  # POST /company_departments.json
  def create
    @company_department = CompanyDepartment.new(company_department_params)

    respond_to do |format|
      if @company_department.save
        format.html { redirect_to @company_department, notice: 'Company department was successfully created.' }
        format.json { render :show, status: :created, location: @company_department }
      else
        format.html { render :new }
        format.json { render json: @company_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_departments/1
  # PATCH/PUT /company_departments/1.json
  def update
    respond_to do |format|
      if @company_department.update(company_department_params)
        format.html { redirect_to @company_department, notice: 'Company department was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_department }
      else
        format.html { render :edit }
        format.json { render json: @company_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_departments/1
  # DELETE /company_departments/1.json
  def destroy
    @company_department.destroy
    respond_to do |format|
      format.html { redirect_to company_departments_url, notice: 'Company department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_department
      @company_department = CompanyDepartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_department_params
      params.require(:company_department).permit(:name)
    end
end

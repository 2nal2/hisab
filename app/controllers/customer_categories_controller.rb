class CustomerCategoriesController < ApplicationController
  before_action :set_customer_category, only: [:show, :edit, :update, :destroy]

  # GET /customer_categories
  # GET /customer_categories.json
  def index
    @customer_categories = CustomerCategory.all
  end

  # GET /customer_categories/1
  # GET /customer_categories/1.json
  def show
  end

  # GET /customer_categories/new
  def new
    @customer_category = CustomerCategory.new
  end

  # GET /customer_categories/1/edit
  def edit
  end

  # POST /customer_categories
  # POST /customer_categories.json
  def create
    @customer_category = CustomerCategory.new(customer_category_params)

    respond_to do |format|
      if @customer_category.save
        format.html { redirect_to @customer_category, notice: 'Customer category was successfully created.' }
        format.json { render :show, status: :created, location: @customer_category }
      else
        format.html { render :new }
        format.json { render json: @customer_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_categories/1
  # PATCH/PUT /customer_categories/1.json
  def update
    respond_to do |format|
      if @customer_category.update(customer_category_params)
        format.html { redirect_to @customer_category, notice: 'Customer category was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_category }
      else
        format.html { render :edit }
        format.json { render json: @customer_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_categories/1
  # DELETE /customer_categories/1.json
  def destroy
    @customer_category.destroy
    respond_to do |format|
      format.html { redirect_to customer_categories_url, notice: 'Customer category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_category
      @customer_category = CustomerCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_category_params
      params.require(:customer_category).permit(:category_name)
    end
end

class PapusController < ApplicationController
  before_action :set_papu, only: [:show, :edit, :update, :destroy]

  # GET /papus
  # GET /papus.json
  def index
    @papus = Papu.all
  end

  # GET /papus/1
  # GET /papus/1.json
  def show
  end

  # GET /papus/new
  def new
    @papu = Papu.new
  end

  # GET /papus/1/edit
  def edit
  end

  # POST /papus
  # POST /papus.json
  def create
    @papu = Papu.new(papu_params)

    respond_to do |format|
      if @papu.save
        format.html { redirect_to @papu, notice: 'Papu was successfully created.' }
        format.json { render :show, status: :created, location: @papu }
      else
        format.html { render :new }
        format.json { render json: @papu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /papus/1
  # PATCH/PUT /papus/1.json
  def update
    respond_to do |format|
      if @papu.update(papu_params)
        format.html { redirect_to @papu, notice: 'Papu was successfully updated.' }
        format.json { render :show, status: :ok, location: @papu }
      else
        format.html { render :edit }
        format.json { render json: @papu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /papus/1
  # DELETE /papus/1.json
  def destroy
    @papu.destroy
    respond_to do |format|
      format.html { redirect_to papus_url, notice: 'Papu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_papu
      @papu = Papu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def papu_params
      params.require(:papu).permit(:title, :views)
    end
end

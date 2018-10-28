class UnitModulesController < ApplicationController
  before_action :set_unit_module, only: [:show, :edit, :update, :destroy]

  def user_modules
      @unit_modules = current_user.unit_modules
  end
  # GET /unit_modules
  # GET /unit_modules.json
  def index
    @unit_modules = UnitModule.all
  end

  # GET /unit_modules/1
  # GET /unit_modules/1.json
  def show
  end

  # GET /unit_modules/new
  def new
    @unit_module = UnitModule.new
  end

  # GET /unit_modules/1/edit
  def edit
  end

  # POST /unit_modules
  # POST /unit_modules.json
  def create
    @unit_module = UnitModule.new(unit_module_params)

    respond_to do |format|
      if @unit_module.save
        format.html { redirect_to @unit_module, notice: 'Unit module was successfully created.' }
        format.json { render :show, status: :created, location: @unit_module }
      else
        format.html { render :new }
        format.json { render json: @unit_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_modules/1
  # PATCH/PUT /unit_modules/1.json
  def update
    respond_to do |format|
      if @unit_module.update(unit_module_params)
        format.html { redirect_to @unit_module, notice: 'Unit module was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit_module }
      else
        format.html { render :edit }
        format.json { render json: @unit_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_modules/1
  # DELETE /unit_modules/1.json
  def destroy
    @unit_module.destroy
    respond_to do |format|
      format.html { redirect_to unit_modules_url, notice: 'Unit module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_module
      @unit_module = UnitModule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_module_params
      params.require(:unit_module).permit(:title, :description, :module_type, :image, {files: []})
    end
end

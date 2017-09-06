class ClassesSetupsController < ApplicationController
  before_action :set_classes_setup, only: [:show, :edit, :update, :destroy]

  # GET /classes_setups
  # GET /classes_setups.json
  def index
    @classes_setups = ClassesSetup.all
  end

  # GET /classes_setups/1
  # GET /classes_setups/1.json
  def show
  end

  # GET /classes_setups/new
  def new
    @classes_setup = ClassesSetup.new
  end

  # GET /classes_setups/1/edit
  def edit
  end

  # POST /classes_setups
  # POST /classes_setups.json
  def create
    @classes_setup = ClassesSetup.new(classes_setup_params)

    respond_to do |format|
      if @classes_setup.save
        format.html { redirect_to @classes_setup, notice: 'Classes setup was successfully created.' }
        format.json { render :show, status: :created, location: @classes_setup }
      else
        format.html { render :new }
        format.json { render json: @classes_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classes_setups/1
  # PATCH/PUT /classes_setups/1.json
  def update
    respond_to do |format|
      if @classes_setup.update(classes_setup_params)
        format.html { redirect_to @classes_setup, notice: 'Classes setup was successfully updated.' }
        format.json { render :show, status: :ok, location: @classes_setup }
      else
        format.html { render :edit }
        format.json { render json: @classes_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classes_setups/1
  # DELETE /classes_setups/1.json
  def destroy
    @classes_setup.destroy
    respond_to do |format|
      format.html { redirect_to classes_setups_url, notice: 'Classes setup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classes_setup
      @classes_setup = ClassesSetup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classes_setup_params
      params.require(:classes_setup).permit(:name, :area_of_study, :area_id, :description)
    end
end

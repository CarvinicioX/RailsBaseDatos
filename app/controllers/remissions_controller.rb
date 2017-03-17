class RemissionsController < ApplicationController
  before_action :set_remission, only: [:show, :edit, :update, :destroy]

  # GET /remissions
  # GET /remissions.json
  def index
    @remissions = Remission.all
  end

  # GET /remissions/1
  # GET /remissions/1.json
  def show
  end

  # GET /remissions/new
  def new
    @remission = Remission.new
  end

  # GET /remissions/1/edit
  def edit
  end

  # POST /remissions
  # POST /remissions.json
  def create
    @remission = Remission.new(remission_params)

    respond_to do |format|
      if @remission.save
        format.html { redirect_to @remission, notice: 'Remission was successfully created.' }
        format.json { render :show, status: :created, location: @remission }
      else
        format.html { render :new }
        format.json { render json: @remission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remissions/1
  # PATCH/PUT /remissions/1.json
  def update
    respond_to do |format|
      if @remission.update(remission_params)
        format.html { redirect_to @remission, notice: 'Remission was successfully updated.' }
        format.json { render :show, status: :ok, location: @remission }
      else
        format.html { render :edit }
        format.json { render json: @remission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remissions/1
  # DELETE /remissions/1.json
  def destroy
    @remission.destroy
    respond_to do |format|
      format.html { redirect_to remissions_url, notice: 'Remission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remission
      @remission = Remission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def remission_params
      params.require(:remission).permit(:constancy_id, :laboratory_id, :date)
    end
end

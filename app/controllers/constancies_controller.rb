class ConstanciesController < ApplicationController
  before_action :set_constancy, only: [:show, :edit, :update, :destroy]

  # GET /constancies
  # GET /constancies.json
  def index
    @constancies = Constancy.all
  end

  # GET /constancies/1
  # GET /constancies/1.json
  def show
  end

  # GET /constancies/new
  def new
    @constancy = Constancy.new
  end

  # GET /constancies/1/edit
  def edit
  end

  # POST /constancies
  # POST /constancies.json
  def create
    @constancy = Constancy.new(constancy_params)

    respond_to do |format|
      if @constancy.save
        format.html { redirect_to @constancy, notice: 'Constancy was successfully created.' }
        format.json { render :show, status: :created, location: @constancy }
      else
        format.html { render :new }
        format.json { render json: @constancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constancies/1
  # PATCH/PUT /constancies/1.json
  def update
    respond_to do |format|
      if @constancy.update(constancy_params)
        format.html { redirect_to @constancy, notice: 'Constancy was successfully updated.' }
        format.json { render :show, status: :ok, location: @constancy }
      else
        format.html { render :edit }
        format.json { render json: @constancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constancies/1
  # DELETE /constancies/1.json
  def destroy
    @constancy.destroy
    respond_to do |format|
      format.html { redirect_to constancies_url, notice: 'Constancy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constancy
      @constancy = Constancy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def constancy_params
      params.require(:constancy).permit(:pacient_id)
    end
end

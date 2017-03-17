class MedicPatientsController < ApplicationController
  before_action :set_medic_patient, only: [:show, :edit, :update, :destroy]

  # GET /medic_patients
  # GET /medic_patients.json
  def index
    @medic_patients = MedicPatient.all
  end

  # GET /medic_patients/1
  # GET /medic_patients/1.json
  def show
  end

  # GET /medic_patients/new
  def new
    @medic_patient = MedicPatient.new
  end

  # GET /medic_patients/1/edit
  def edit
  end

  # POST /medic_patients
  # POST /medic_patients.json
  def create
    @medic_patient = MedicPatient.new(medic_patient_params)

    respond_to do |format|
      if @medic_patient.save
        format.html { redirect_to @medic_patient, notice: 'Medic patient was successfully created.' }
        format.json { render :show, status: :created, location: @medic_patient }
      else
        format.html { render :new }
        format.json { render json: @medic_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medic_patients/1
  # PATCH/PUT /medic_patients/1.json
  def update
    respond_to do |format|
      if @medic_patient.update(medic_patient_params)
        format.html { redirect_to @medic_patient, notice: 'Medic patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @medic_patient }
      else
        format.html { render :edit }
        format.json { render json: @medic_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medic_patients/1
  # DELETE /medic_patients/1.json
  def destroy
    @medic_patient.destroy
    respond_to do |format|
      format.html { redirect_to medic_patients_url, notice: 'Medic patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medic_patient
      @medic_patient = MedicPatient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medic_patient_params
      params.require(:medic_patient).permit(:patient_id, :medic_id)
    end
end

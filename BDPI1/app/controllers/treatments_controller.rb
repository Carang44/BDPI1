class TreatmentsController < ApplicationController
	#before_action :validate_user, except: [:show, :index, :new, :create, :edit]
	before_action :set_patient
	def index
		@treatment = Treatment.all
	end

	def show
		@treatment = Treatment.find(params[:id])
		@medicine = Medicine.new
	end

	def new
		@treatment = Treatment.new
	end

	def edit
		@treatment = Treatment.find(params[:id])
	end

	def create
		@treatment = @patient.treatments.new(treatment_params)
		@treatment.patient = @patient
		if @treatment.save
			redirect_to @treatment.patient
		else
			render :new
		end
	end

	def destroy
		@treatment = Treatment.find(params[:id])
		@treatment.destroy
		redirect_to @patient
	end

	def update
		@treatment = Treatment.find(params[:id])
		if @treatment.update(treatment_params)
			redirect_to @treatment.patient
		else
			render :edit
		end
	end

	private

	def set_patient
		@patient = Patient.find(params[:patient_id])
	end 

	def validate_user
		redirect_to new_user_session_path, notice: "Es Necesario Iniciar Sesión"
	end

	def treatment_params
		params.require(:treatment).permit(:nombreTratamiento,
			:descripcionTratamiento, :fechaInicio,
			:fechaFin)
	end
end
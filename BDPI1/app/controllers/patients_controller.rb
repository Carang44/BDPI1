class PatientsController < ApplicationController
	#before_action :validate_user, except: [:show, :index, :new, :create, :edit]
	def index
		@patient = Patient.all
	end

	def show
		@patient = Patient.find(params[:id])
		@apointment = Apointment.new
		@treatment = Treatment.new
	end

	def new
		@patient = Patient.new
	end

	def edit
		@patient = Patient.find(params[:id])
	end

	def create
		@patient = Patient.new(patient_params)
		if @patient.save
			redirect_to @patient
		else
			render :new
		end
	end

	def destroy
		@patient = Patient.find(params[:id])
		@patient.destroy
		redirect_to patients_path
	end

	def update
		@patient = Patient.find(params[:id])
		if @patient.update(patient_params)
			redirect_to @patient
		else
			render :edit
		end
	end

	private

	def patient_params
		params.require(:patient).permit(:nombrePaciente, :cedula,
			:correo, :contrasena)
	end
end



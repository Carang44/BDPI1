class ApointmentsController < ApplicationController
	#before_action :validate_user, except: [:show, :index, :new, :create, :edit]
	before_action :set_patient
	def index
		@apointment = Apointment.all
	end

	def show
		@apointment = Apointment.find(params[:id])
	end

	def new
		@apointment = Apointment.new
	end

	def edit
		@apointment = Apointment.find(params[:id])
	end

	def create
		@apointment = @patient.apointments.new(apointment_params)
		@apointment.patient = @patient
		if @apointment.save
			redirect_to @apointment.patient
		else
			render :new
		end
	end

	def destroy
		@apointment = Apointment.find(params[:id])
		@apointment.destroy
		redirect_to apointment_path
	end

	def update
		@apointment = Apointment.find(params[:id])
		if @apointment.update(apointment_params)
			redirect_to @patient
		else
			render :edit
		end
	end

	private

	def set_patient
		@patient = Patient.find(params[:patient_id])
	end 
	def apointment_params
		params.require(:apointment).permit(:nombreCita, :fechaCita,
			:lugarCita)
	end
end





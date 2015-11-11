class ApointmentsController < ApplicationController
	def index
		@apointment = current_user.apointment.all
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
		@apointment = Apointment.new(apointment_params)
		if @apointment.save
			redirect_to @apointment
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
			redirect_to @apointment
		else
			render :edit
		end
	end

	private

	def apointment_params
		params.require(:apointment).permit(:fechaCita,
			:lugarCita)
	end
end





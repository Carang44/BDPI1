class MedicinesController < ApplicationController
	before_action :set_treatment
	def index
		@medicine = Medicine.all
	end

	def show
		@medicine = Medicine.find(params[:id])
	end

	def new
		@medicine = Medicine.new
	end

	def edit
		@medicine = Medicine.find(params[:id])
	end

	def create
		@medicine = @treatment.medicines.new(medicine_params)
		@medicine.treatment = @treatment
		if @medicine.save
			redirect_to @medicine.treatment
		else
			render :new
		end
	end

	def destroy
		@medicine = Medicine.find(params[:id])
		@medicine.destroy
		redirect_to @treatment
	end

	def update
		@medicine = Medicine.find(params[:id])
		if @medicine.update(medicine_params)
			redirect_to @medicine.treatment
		else
			render :edit
		end
	end

	private

	def set_treatment
		@treatment = Treatment.find(params[:treatment_id])
	end

	def set_medicine
 		@medicine = Medicine.find(params[:id])
	end

 	def medicine_params
 		params.require(:medicine).permit(:nombreMedicamento,
 			:dosisMedicamento, :fechaInicioMedicamento,
 			:intervaloMedicamento)
 	end
 end
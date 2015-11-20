class Medicine < ActiveRecord::Base
	belongs_to :treatment
	validates :nombreMedicamento, presence: true
	validates :dosisMedicamento, presence: true
	validates :fechaInicioMedicamento, presence: true
	validates :intervaloMedicamento, presence: true
end
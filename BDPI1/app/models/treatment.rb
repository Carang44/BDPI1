class Treatment < ActiveRecord::Base
	belongs_to :patient
	validates :nombreTratamiento, presence: true
	validates :descripcionTratamiento, presence: true
	validates :fechaInicio, presence: true
	validates :fechaFin, presence: true
end
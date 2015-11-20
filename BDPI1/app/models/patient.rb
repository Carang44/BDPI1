class Patient < ActiveRecord::Base
	validates :nombrePaciente, presence: true
	validates :cedula, presence: true
	validates :correo , presence: true
	validates :contrasena, presence: true
	has_many :treatments
    has_many :apointments
end

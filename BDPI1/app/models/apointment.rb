class Apointment < ActiveRecord::Base
	belongs_to :patient
	validates :nombreCita, presence: true
    validates :lugarCita, presence: true
    validates :fechaCita, presence: true
end

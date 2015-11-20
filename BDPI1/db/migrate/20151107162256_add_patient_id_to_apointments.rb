class AddPatientIdToApointments < ActiveRecord::Migration
  def change
    add_reference :apointments, :patient, index: true, foreign_key: true
  end
end

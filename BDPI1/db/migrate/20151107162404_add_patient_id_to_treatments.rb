class AddPatientIdToTreatments < ActiveRecord::Migration
  def change
    add_reference :treatments, :patient, index: true, foreign_key: true
  end
end

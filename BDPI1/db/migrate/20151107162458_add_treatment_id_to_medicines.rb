class AddTreatmentIdToMedicines < ActiveRecord::Migration
  def change
    add_reference :medicines, :treatment, index: true, foreign_key: true
  end
end

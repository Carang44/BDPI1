class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :nombreTratamiento
      t.text :descripcionTratamiento
      t.text :fechaInicio
      t.text :fechaFin

      t.timestamps null: false
    end
  end
end

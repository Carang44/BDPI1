class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :nombrePaciente
      t.string :cedula
      t.string :correo
      t.string :contrasena

      t.timestamps null: false
    end
    add_index :patients, :nombrePaciente
  end
end

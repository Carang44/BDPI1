class CreateApointments < ActiveRecord::Migration
  def change
    create_table :apointments do |t|
      t.string :nombreCita
      t.string :lugarCita
      t.text :fechaCita
      t.timestamps null: false
    end
    add_index :apointments, :fechaCita
  end
end

# class CreateMedicines < ActiveRecord::Migration
#   def change
#     create_table :medicines do |t|
#       t.string :nombreMedicamento
#       t.string :dosisMedicamento
#       t.text :fechaInicioMedicamento
#       t.string :intervaloMedicamento

#       t.timestamps null: false
#     end
#     add_index :medicines, :nombreMedicamento
#   end
# end

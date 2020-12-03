class CreatePropietarioVehiculos < ActiveRecord::Migration[6.0]
  def change
    create_table :propietario_vehiculos do |t|
      t.references :vehiculo, null: false, foreign_key: true
      t.references :propietario, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateVehiculos < ActiveRecord::Migration[6.0]
  def change
    create_table :vehiculos do |t|
      t.string :marca
      t.string :modelo
      t.references :usuario, null: false, foreign_key: true
      t.string :usuario_actualiza
      t.string :color
      t.string :placa

      t.timestamps
    end
  end
end

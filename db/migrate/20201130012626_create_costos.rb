class CreateCostos < ActiveRecord::Migration[6.0]
  def change
    create_table :costos do |t|
      t.references :reparacion, null: false, foreign_key: true
      t.references :propietario, null: false, foreign_key: true
      t.references :vehiculo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

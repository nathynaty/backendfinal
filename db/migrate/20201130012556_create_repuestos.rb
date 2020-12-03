class CreateRepuestos < ActiveRecord::Migration[6.0]
  def change
    create_table :repuestos do |t|
      t.string :nombre
      t.string :cantidad
      t.references :reparacion, null: false, foreign_key: true

      t.timestamps
    end
  end
end

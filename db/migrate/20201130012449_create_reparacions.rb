class CreateReparacions < ActiveRecord::Migration[6.0]
  def change
    create_table :reparacions do |t|
      t.references :vehiculo, null: false, foreign_key: true
      t.references :usuario, null: false, foreign_key: true
      t.string :usuario_actualiza
      t.string :etapa
      t.boolean :aprobado

      t.timestamps
    end
  end
end

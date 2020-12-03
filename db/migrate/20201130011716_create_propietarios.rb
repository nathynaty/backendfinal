class CreatePropietarios < ActiveRecord::Migration[6.0]
  def change
    create_table :propietarios do |t|
      t.string :nombre
      t.string :apellido
      t.references :usuario, null: false, foreign_key: true
      t.string :usuario_actualiza
      t.string :cedula
      t.string :celular
      t.string :email

      t.timestamps
    end
  end
end

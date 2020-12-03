class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :email
      t.string :password
      t.string :nombre
      t.string :telefono
      t.string :rol
      t.string :token

      t.timestamps
    end
  end
end

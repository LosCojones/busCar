class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :dni
      t.string :nombre_usuario
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end

class CreateCoches < ActiveRecord::Migration[5.1]
  def change
    create_table :coches do |t|
      t.string :marca
      t.string :modelo
      t.date :fecha_matriculacion
      t.string :combustible
      t.integer :kms
      t.text :descripcion

      t.timestamps
    end
  end
end

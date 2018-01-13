class CreateSells < ActiveRecord::Migration[5.1]
  def change
    create_table :sells do |t|
      t.references :coche, foreign_key: true
      t.references :comprador
      t.references :vendedor
      t.date :fecha_publicacion
      t.date :fecha_compra
      t.float :precio

      t.timestamps
    end
  end
end

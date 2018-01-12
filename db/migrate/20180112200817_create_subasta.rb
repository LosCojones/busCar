class CreateSubasta < ActiveRecord::Migration[5.1]
  def change
    create_table :subasta do |t|
      t.references :coche, foreign_key: true
      t.references :comprador, foreign_key: true
      t.references :vendedor, foreign_key: true
      t.date :fecha_publicacion
      t.date :fecha_limite
      t.date :fecha_compra
      t.float :valor_compra
      t.references :puja, foreign_key: true

      t.timestamps
    end
  end
end

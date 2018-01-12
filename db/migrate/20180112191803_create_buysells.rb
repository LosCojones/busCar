class CreateBuysells < ActiveRecord::Migration[5.1]
  def change
    create_table :buysells do |t|
      t.references :coche, foreign_key: true
      t.references :comprador, foreign_key: true
      t.references :vendedor, foreign_key: true
      t.date :fecha_publicacion
      t.date :fecha_compra
      t.float :precio

      t.timestamps
    end
  end
end

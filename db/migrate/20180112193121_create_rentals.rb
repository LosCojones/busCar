class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.references :coche, foreign_key: true
      t.references :alquilador, foreign_key: true
      t.references :alquilado, foreign_key: true
      t.date :fecha_creacion_anuncio
      t.date :fecha_fin_anuncio
      t.date :fecha_inicio_alquiler
      t.date :fecha_fin_alquiler
      t.float :precio

      t.timestamps
    end
  end
end

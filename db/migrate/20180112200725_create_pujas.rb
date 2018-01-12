class CreatePujas < ActiveRecord::Migration[5.1]
  def change
    create_table :pujas do |t|
      t.references :user, foreign_key: true
      t.references :subasta, foreign_key: true
      t.datetime :fecha_puja
      t.float :valor

      t.timestamps
    end
  end
end

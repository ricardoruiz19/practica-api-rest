class CreateBoleta < ActiveRecord::Migration[5.1]
  def change
    create_table :boleta do |t|
      t.string :nombre
      t.string :ciudad
      t.string :pais
      t.date :fecha_inicio
      t.date :fecha_evento

      t.timestamps
    end
  end
end

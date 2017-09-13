class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :nombre
      t.string :ciudad
      t.date :fecha_preventa
      t.date :fecha_evento

      t.timestamps
    end
  end
end

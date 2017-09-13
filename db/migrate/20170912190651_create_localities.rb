class CreateLocalities < ActiveRecord::Migration[5.1]
  def change
    create_table :localities do |t|
      t.string :tipo
      t.float :precio
      t.date :fecha_limite

      t.timestamps
    end
  end
end

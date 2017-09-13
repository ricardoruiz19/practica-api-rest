class Reltable < ActiveRecord::Migration[5.1]
  def change
  	add_reference :events, :localities, index: true
  end
end

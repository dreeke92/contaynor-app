class CreateTransportLoads < ActiveRecord::Migration[5.2]
  def change
    create_table :transport_loads do |t|
      t.string :load_type
      t.string :description
      t.float :unit_volume
      t.float :unit_weight
      t.string :comment
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end

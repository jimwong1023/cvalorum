class AddCostValueToPositions < ActiveRecord::Migration[5.0]
  def change
    add_column :positions, :cost_value_in_cents, :integer, null: false
  end
end

class AddWorkorderIdColumnToWorkorderTable < ActiveRecord::Migration
  def change
    add_column :customers, :workorder_id, :integer
    add_index :customers, :workorder_id
  end
end

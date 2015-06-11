class AddCustomerIdColumnToWorkorderTable < ActiveRecord::Migration
  def change
    add_column :workorders, :customer_id, :integer
    add_index :workorders, :customer_id
  end
end

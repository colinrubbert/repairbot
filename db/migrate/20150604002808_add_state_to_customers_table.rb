class AddStateToCustomersTable < ActiveRecord::Migration
  def change
    add_column :customers, :cstate, :string
  end
end

class AlterCustomersAddUserIdColumn < ActiveRecord::Migration
  def change
    add_column :customers, :tech_id, :integer
    add_index :customers, :tech_id
  end
end

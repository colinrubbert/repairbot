class AddForeignKeysToWorkorder < ActiveRecord::Migration
  def change
    add_column :workorders, :tech_id, :integer
  end

end

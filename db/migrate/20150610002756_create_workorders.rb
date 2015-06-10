class CreateWorkorders < ActiveRecord::Migration
  def change
    create_table :workorders do |t|

      t.integer :woid     # Work Order ID
      t.string :cdmake    # Customer Device Make
      t.string :cdmodel   # Customer Device Model
      t.string :cdaccr    # Customer Device Accessories
      t.text :cdesc       # Customer Description of Problem
      t.text :cdpass      # Customer Device Password
      t.string :ccat      # Problem Category i.e. Malware/Virus removal, Diagnostics, etc

      t.timestamps
    end
  end
end

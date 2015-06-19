class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|

      t.string :scanner             # Scanner Results
      t.string :task                # Actions the tech performed
      t.string :software            # Software the tech installed or ran
      t.text :customer_note  # Customer printable notes
      t.text :tech_note      # Technician only notes
      t.string :workorder_id        # Workorder ID to match repairs with WO

      t.timestamps
    end
  end
end

class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|

      t.string :cname     # Customer Name
      t.string :ccompany  # Company Customer Works For
      t.string :cpphone   # Customer Primary Phone Number
      t.string :csphone   # Customer Secondary Phone Number
      t.string :csaddr    # Customer Address
      t.string :ccity     # Customer State
      t.string :czip      # Customer Zip
      t.string :cemail    # Customer Email Address

      t.timestamps
    end
  end
end

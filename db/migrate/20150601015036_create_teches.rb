class CreateTeches < ActiveRecord::Migration
  def change
    create_table :teches do |t|

      t.string :fname
      t.string :lname
      t.string :title
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end

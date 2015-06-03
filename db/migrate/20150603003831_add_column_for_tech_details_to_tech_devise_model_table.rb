class AddColumnForTechDetailsToTechDeviseModelTable < ActiveRecord::Migration
  def change

    add_column :techs, :fname, :string
    add_column :techs, :lname, :string
    add_column :techs, :title, :string
    add_column :techs, :phone, :string

  end
end

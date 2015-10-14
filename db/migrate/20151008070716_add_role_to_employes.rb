class AddRoleToEmployes < ActiveRecord::Migration
  def change
  	    add_column :employes, :role, :integer
  end
end

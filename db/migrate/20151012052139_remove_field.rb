class RemoveField < ActiveRecord::Migration
  def change
  	 remove_column :employes, :role, :string
  end
end

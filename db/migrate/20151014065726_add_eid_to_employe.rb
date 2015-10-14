class AddEidToEmploye < ActiveRecord::Migration
  def change
  	add_column :employes, :e_id, :string
  end


  def change
  	 remove_column :employes, :profile, :string
  	 remove_column :employes, :designation, :string
   	 remove_column :employes, :contact, :string
  end
end

 
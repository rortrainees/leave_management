class AddFieldTo < ActiveRecord::Migration
   def change
  	add_column :employes, :e_id, :string
   end
end

class AddFieldToEmploye < ActiveRecord::Migration
  def change
  	add_column :employes, :confirmation_token, :string
    add_column :employes, :confirmed_at, :datetime
    add_column :employes, :confirmation_sent_at, :datetime
    add_index :employes, :confirmation_token, :unique => true
    Employe.update_all(:confirmed_at => Time.now)
  end
end

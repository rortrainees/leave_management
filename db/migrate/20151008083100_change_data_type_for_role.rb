class ChangeDataTypeForRole < ActiveRecord::Migration
  def change
    change_column :employes, :role, :string

  end
end

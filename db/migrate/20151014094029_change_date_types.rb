class ChangeDateTypes < ActiveRecord::Migration
  def change
  	 change_column :rests, :department, :string
  end
end

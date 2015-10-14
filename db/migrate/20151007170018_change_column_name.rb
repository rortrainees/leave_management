class ChangeColumnName < ActiveRecord::Migration
  def change
  	 rename_column :rests, :leave_from, :start_date
  	 rename_column :rests, :leave_to, :end_date
  end
end

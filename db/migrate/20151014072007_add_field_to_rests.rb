class AddFieldToRests < ActiveRecord::Migration
  def change
  	 add_column :rests, :place, :string
  	 add_column :rests, :join_date, :datetime
  	 add_column :rests, :department, :datetime
     add_column :rests, :contact, :string
  end
end

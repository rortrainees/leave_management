class AddStatusToRests < ActiveRecord::Migration
  def change
    add_column :rests, :status, :string
  end
end

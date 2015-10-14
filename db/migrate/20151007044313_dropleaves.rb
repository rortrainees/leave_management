class Dropleaves < ActiveRecord::Migration
  def change
  	drop_table :leaves
  	drop_table :managers
  end
end

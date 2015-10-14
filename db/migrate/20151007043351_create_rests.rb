class CreateRests < ActiveRecord::Migration
  def change
    create_table :rests do |t|
      t.string :resone
      t.datetime :leave_from
      t.datetime :leave_to
      t.references :employe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

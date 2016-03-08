class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :student_id
      t.string :first
      t.string :last

      t.timestamps null: false
    end
  end
end

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first
      t.string :last

      t.timestamps null: false
    end
  end
end

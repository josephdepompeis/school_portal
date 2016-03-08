class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.string :assignment
      t.integer :grade

      t.timestamps null: false
    end
  end
end

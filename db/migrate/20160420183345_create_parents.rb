class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :user_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end

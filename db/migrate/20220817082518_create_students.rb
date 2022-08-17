class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :roll_no
      t.integer :my_class
      
      t.timestamps
    end
  end
end

class CreateCollegeClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :college_classes do |t|
      t.string :name
      t.string :instructor
      # t.type :column_name
    end
  end
end

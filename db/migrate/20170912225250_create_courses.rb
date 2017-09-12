class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :field_of_study
      t.text :description

      t.timestamps
    end
  end
end

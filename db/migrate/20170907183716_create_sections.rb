class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.integer :section_number
      t.string :semester
      t.integer :room_number
      t.references :Professor, foreign_key: true
      t.references :ClassesSetup, foreign_key: true

      t.timestamps
    end
  end
end

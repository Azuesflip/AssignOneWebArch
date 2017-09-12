class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.integer :number
      t.integer :room_number
      t.string :building
      t.datetime :time
      t.references :professor, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end

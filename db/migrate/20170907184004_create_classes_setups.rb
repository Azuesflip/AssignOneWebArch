class CreateClassesSetups < ActiveRecord::Migration[5.1]
  def change
    create_table :classes_setups do |t|
      t.string :name
      t.string :area_of_study
      t.integer :area_id
      t.text :description

      t.timestamps
    end
  end
end

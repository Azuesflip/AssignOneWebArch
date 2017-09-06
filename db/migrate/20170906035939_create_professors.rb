class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.string :name
      t.int :age
      t.string :gender

      t.timestamps
    end
  end
end

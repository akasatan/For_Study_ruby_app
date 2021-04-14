class CreateInputStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :input_studies do |t|
      t.text :question
      t.text :explanation

      t.timestamps
    end
  end
end

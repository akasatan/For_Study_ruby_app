class CreateTFexercises < ActiveRecord::Migration[5.0]
  def change
    create_table :t_fexercises do |t|
      t.text :question
      t.boolean :judge
      t.text :explanation

      t.timestamps
    end
  end
end

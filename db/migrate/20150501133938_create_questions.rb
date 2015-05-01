class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.sting :title
      t.text :body
      t.boolean :resolved

      t.timestamps null: false
    end
  end
end

class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text
      t.text :choices
      t.string :answer
      t.timestamps
    end
  end
end

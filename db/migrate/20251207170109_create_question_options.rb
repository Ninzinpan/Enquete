class CreateQuestionOptions < ActiveRecord::Migration[8.1]
  def change
    create_table :question_options do |t|
      t.string :title
      t.integer :votes_count, default: 0
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end

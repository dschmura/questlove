class CreatePanelQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :panel_questions do |t|
      t.references :panel, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end

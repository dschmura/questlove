class AddPanelToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_reference :questions, :panel, foreign_key: true
  end
end

class CreatePanels < ActiveRecord::Migration[5.0]
  def change
    create_table :panels do |t|
      t.string :name
      t.text :description
      t.text :rules
      t.integer :moderator

      t.timestamps
    end
  end
end

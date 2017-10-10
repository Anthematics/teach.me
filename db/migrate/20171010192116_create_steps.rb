class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.string :name
      t.text :description
      t.belongs_to :chapter, foreign_key: true

      t.timestamps
    end
  end
end

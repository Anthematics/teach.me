class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.string :name
      t.text :description
      t.references :language

      t.timestamps
    end
  end
end

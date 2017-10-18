class CreateCodeTests < ActiveRecord::Migration[5.1]
  def change
    create_table :code_tests do |t|
      t.references :step
      t.string :input
      t.string :output

      t.timestamps
    end
  end
end

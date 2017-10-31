class CreateUserSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :user_steps do |t|

      t.references :user
      t.references :step
      t.text :userCode
      t.boolean :successfully_completed

      t.timestamps
    end
  end
end

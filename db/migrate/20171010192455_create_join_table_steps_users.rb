class CreateJoinTableStepsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users_steps do |t|
      t.belongs_to :users
      t.belongs_to :steps
      t.boolean :completion
      t.timestamps
    end
  end
end

class ChangeCodeToBeTextInSteps < ActiveRecord::Migration[5.1]
  def change
    change_column :steps, :code, :text
  end
end

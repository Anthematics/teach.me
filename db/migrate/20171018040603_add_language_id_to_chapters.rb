class AddLanguageIdToChapters < ActiveRecord::Migration[5.1]
  def change
    add_column :chapters, :language_id, :integer
  end
end

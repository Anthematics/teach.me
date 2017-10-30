class AddRandomAvatarToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :random_avatar, :string
  end
end

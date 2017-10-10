class CreateUsersChaptersJoinTable < ActiveRecord::Migration[5.1]
	def change
		create_table :users_chapters do |t|
			t.belongs_to :users
			t.belongs_to :chapters
			t.timestamps
		end
	end
end

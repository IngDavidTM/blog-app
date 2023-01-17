class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      add_index :authorId
      add_index :postId

      t.timestamps
    end
  end
end

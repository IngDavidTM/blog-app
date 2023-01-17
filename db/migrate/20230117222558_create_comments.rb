class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      add_index :authorId
      add_index :postId

      t.timestamps
    end
  end
end

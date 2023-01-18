class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      add_index :user_id
      add_index :post_id

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      add_index :author_id
      add_index :post_id

      t.timestamps
    end
  end
end

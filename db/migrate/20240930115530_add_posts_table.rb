class AddPostsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: ''
      t.text :content, null: false, default: ''
      
      t.timestamps
    end
  end
end

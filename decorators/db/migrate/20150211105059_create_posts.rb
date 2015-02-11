class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.integer :user_id
    	t.string :title
    	t.text :post_text
    	t.string :image_link
      t.timestamps
    end
  end
end

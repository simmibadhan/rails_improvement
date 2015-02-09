class PostsForm
	include ActiveModel::Model
	attr_accessor(:user_id, :post_text)

	def save_post
		post = Post.new
		post.user_id = self.user_id
		post.post_text = self.post_text
		post.save
	end
end
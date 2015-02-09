class PostsFormsController < ApplicationController
	def new
		@posts_form = PostsForm.new
	end

	def create
		@posts_form = PostsForm.new(posts_form_params)
		@posts_form.save_post

		redirect_to user_path(current_user)
	end

	private
	def posts_form_params
		params.require(:posts_form).permit(:user_id, :post_text)
	end
end

class PostsController < ApplicationController
	def show
		post = Post.find_by_id(params[:id])
		@post_decorator = PostDecorator.new(post)
	end
	def index
		@posts = Post.order("created_at DESC")
	end
end

class PostsController < ApplicationController
	def show
		@post = Post.find_by_id(params[:id])
	end
	def index
		@posts = Post.order("created_at DESC")
	end
end

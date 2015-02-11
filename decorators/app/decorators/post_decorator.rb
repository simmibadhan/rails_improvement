class PostDecorator
	attr_reader :post

	def initialize(post)
		@post = post
	end

	def is_front_page?
		post.created_at > 2.days.ago
	end

	def publication_date
		post.created_at.strftime '%Y-%m-%d'
	end

	def method_missing(method_name, *args, &block)
		post.send(method_name, *args, &block)
	end
end
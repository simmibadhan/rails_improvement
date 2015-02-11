class Post < ActiveRecord::Base
	belongs_to :user

	def is_front_page?
		created_at > 2.days.ago
	end
end

module DefaultFunctions
	extend ActiveSupport::Concern
	
	included do
		enum role: [:user, :vip, :admin]
		after_initialize :set_default_role, :if => :new_record?
	end

	def set_default_role
    self.role ||= :user
  end
end
class Link < ActiveRecord::Base
	before_save :to_link
	def to_link
		self.permalink = self.name.to_vnlink
	end
end

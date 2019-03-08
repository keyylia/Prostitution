class Mov < ApplicationRecord
	has_many :images
	def to_s 
		"#{title}"
	end
end

class User < ApplicationRecord
	belongs_to :user

	scope :published, ->{ where.not(published_at: nil)}
	scope :unpublished, ->{ where.not(published_at: nil)}

end

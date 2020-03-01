class Comment < ApplicationRecord
  translates :content_body
  validates :content_body, presence: true
end

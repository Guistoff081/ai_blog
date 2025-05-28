class Post < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_rich_text :body
  validates :title, presence: true, length: { maximum: 255 }
end

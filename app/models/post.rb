class Post < ApplicationRecord
  belongs_to :user
  
  has_rich_text :body

  validates :title, presence: true
  # validates :content, presence: true
end
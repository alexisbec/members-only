class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true, length: { minimum: 5 }
end

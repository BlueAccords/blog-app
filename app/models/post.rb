class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 4, maximum: 140 }
  validates :body, presence: true
end

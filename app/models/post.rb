class Post < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :replies

  validates :title, :body, :author_id, presence: true
end

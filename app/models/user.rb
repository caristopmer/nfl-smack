class User < ActiveRecord::Base
  has_many :posts, foreign_key: :author_id
  has_many :replies, foreign_key: :author_id
  belongs_to :favorite_team, class_name: "Team"

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end

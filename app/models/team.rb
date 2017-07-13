class Team < ActiveRecord::Base
  has_many :fans, class_name: "User", foreign_key: :favorite_team_id

  validates :location, :name, presence: true
end

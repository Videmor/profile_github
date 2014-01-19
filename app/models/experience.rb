class Experience < ActiveRecord::Base

  belongs_to :skill
  belongs_to :user

  validates :skill_id, :user_id, :reposiroty, presence: true

end

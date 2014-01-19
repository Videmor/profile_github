class Skill < ActiveRecord::Base

  has_many :experiences, dependent: :destroy
  has_many :users, through: :experiences

  validates :name, presence: true

end

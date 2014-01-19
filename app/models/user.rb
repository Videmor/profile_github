class User < ActiveRecord::Base

  has_many :experiences, dependent: :destroy
  has_many :skills, through: :experiences
  has_many :report_cards, dependent: :destroy

  has_many :relationships, foreign_key: 'follower_id', dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: 'followed_id', class_name: 'Relationship', dependent: :destroy
  has_many :follower_users, through: :reverse_relationships, source: :follower

  has_many :reputations, foreign_key: 'qualifier_id', dependent: :destroy
  has_many :qualified_users, through: :reputations, source: :qualified
  has_many :reverse_reputations, foreign_key: 'qualified_id', dependent: :destroy
  has_many :qualifier_users, through: :reverse_reputations, source: :qualifier

  validates :username, :email, presence: true, uniqueness: true

end

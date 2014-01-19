class Reputation < ActiveRecord::Base

  belongs_to :qualified, class_name: 'User'
  belongs_to :qualifier, class_name: 'User'


  validates :qualified_id, :qualifier_id, :points, presence: true
  validates :points, numericality: { only_integer: true }

end

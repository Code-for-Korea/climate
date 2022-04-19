class Tool < ApplicationRecord
  belongs_to :goal
  has_and_belongs_to_many :data_sources
  has_and_belongs_to_many :policies
  has_and_belongs_to_many :stories

  validates :title, presence: true
end

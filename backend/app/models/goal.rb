class Goal < ApplicationRecord
  has_many :tools
  has_and_belongs_to_many :data_sources

  validates :title, presence: true
end

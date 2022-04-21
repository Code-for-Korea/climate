class Policy < ApplicationRecord
  has_and_belongs_to_many :tools
  has_many :documents

  validates :title, presence: true
end

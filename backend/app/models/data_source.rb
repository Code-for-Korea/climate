class DataSource < ApplicationRecord
  has_and_belongs_to_many :goals
  has_and_belongs_to_many :tools
end

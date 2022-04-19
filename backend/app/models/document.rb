class Document < ApplicationRecord
  belongs_to :policy

  has_one_attached :file
end
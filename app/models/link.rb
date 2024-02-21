class Link < ApplicationRecord
  validates :destination_url, presence: true
end
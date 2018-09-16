class Item < ApplicationRecord
  belongs_to :feed

  validates :url, uniqueness: {scope: :feed_id}
end

class Item < ApplicationRecord
  belongs_to :feed

  validates :title, presence: true
  validates :url, presence: true, uniqueness: {scope: :feed_id}

  def check
    self.update(checked: true)
  end

  def uncheck
    self.update(checked: false)
  end
end

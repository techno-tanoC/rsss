class Feed < ApplicationRecord
  has_many :items, dependent: :destroy

  def fetch_and_update
    feed = Feedjira::Feed.fetch_and_parse(self.url)
    feed.entries.reverse_each do |entry|
      item = self.items.find_or_initialize_by(url: entry.url)
      item.update(title: entry.title, published_at: entry.published)
    end
  end
end

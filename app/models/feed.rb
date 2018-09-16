class Feed < ApplicationRecord
  has_many :items

  def fetch_and_update
    feed = Feedjira::Feed.fetch_and_parse(self.url)
    feed.entries.each do |entry|
      item = self.items.find_or_initialize_by(url: entry.url)
      item.update(title: entry.title, published_at: entry.published)
    end
  end
end
